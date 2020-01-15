package page.controller.user.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import page.dto.User;
import page.service.user.login.GoogleService;
import page.service.user.login.UserLoginService;

@Controller
public class UserLoginController {

	private static final Logger logger= LoggerFactory.getLogger(UserLoginController.class);

	@Autowired JavaMailSender mailSender;
	
	@Autowired UserLoginService userloginservice;

	@Autowired private GoogleService googleService;
	
	@Autowired
	private GoogleConnectionFactory googleConnectionFactory;

	@Autowired
	private OAuth2Parameters googleOAuth2Parameters;
	
	
	@RequestMapping(value = "/user/login/join",method = RequestMethod.GET)
	public void userJoinForm() {}
	
	@RequestMapping(value = "/user/login/join",method = RequestMethod.POST)
	public String userJoinProc(User user) {
		
		user.setUphone(user.getUphone());

		userloginservice.userjoin(user);
		
		return "redirect:/main";
	}

	
	@RequestMapping(value = "/user/login/login", method = RequestMethod.GET)
	public void userLogin(Model model, HttpSession session) {
		
		/* 구글code 발행 */
		OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations();
		String url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, googleOAuth2Parameters);

		System.out.println("구글:" + url);

		model.addAttribute("google_url", url);

	}
	
	

	@RequestMapping(value = "/user/login/login", method = RequestMethod.POST)
	public String loginProc(User user, HttpSession session, Model model ) {
		
		logger.info("user" +user);
		
			
		//아이디, 패스워드 DB 조회
		boolean isLogin=userloginservice.userlogin(user);//true면 인증 성공
		
		int uno=userloginservice.getunoByemail(user);
		user.setUserno(uno);
		
		//결과에 따른 세션처리
		if(isLogin) {
			//세션에 정보 저장하기
			session.setAttribute("login", isLogin);
			session.setAttribute("loginid", user.getUemail());
			session.setAttribute("userno", user.getUserno());
			
		}else {
			model.addAttribute("fail",isLogin);
			return "/user/login/login";
		}
		return "redirect:/main";
	}
	@RequestMapping(value = "/userLogout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/main";
		
	}
	
	// id 중복 체크 컨트롤러
	@RequestMapping(value = "/user/idCheck", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(@RequestParam("uEmail") String uemail) {

		return userloginservice.userIdCheck(uemail);
	}
	
	@RequestMapping(value = "/user/login/googlejoin",method = RequestMethod.GET)
	public void usergoogleJoinForm() {}
	
	@RequestMapping(value = "/user/login/googlejoin",method = RequestMethod.POST)
	public String usergoogleJoinProc(User user) {
		
		googleService.insertGoogleInfo(user);
		
		return "redirect:/main";
	}
	
	
	//구글 로그인 성공시 callback호출 메소드

		@RequestMapping(value = "/googleLogin/googleSignInCallback", method = { RequestMethod.GET, RequestMethod.POST })

		public String googleCallback(String code, HttpSession session, Model model) {

			logger.info("여기는여기는 googleCallback");

			try {

				//구글 로그인 데이터 파싱 및 설정 위한 서비스 호출

				User user= new User();
				user=googleService.setGoogleLogin(code, session, googleOAuth2Parameters);

				model.addAttribute("user",user);
			} catch (IOException e) {


				e.printStackTrace();
			}

			if(session.getAttribute("socialDouble").equals(false)) {
				return "user/login/googlejoin";
			}else {
				
				return "redirect:/main";
			}

		}
		
		
		
		 // mailSending 코드
        @RequestMapping( value = "/user/auth" , method=RequestMethod.POST )
        public ModelAndView mailSending(HttpServletRequest request, String uemail, HttpServletResponse response_email) throws IOException {
        	
            Random r = new Random();
            int dice = r.nextInt(4589362) + 49311; //이메일로 받는 인증코드 부분 (난수)
            
            String setfrom = "simbong444@gamil.com";
            String tomail = request.getParameter("uemail"); // 받는 사람 이메일
            String title = "회원가입 인증 이메일 입니다."; // 제목
            String content =
            
            System.getProperty("line.separator")+ //한줄씩 줄간격을 두기위해 작성
            
            System.getProperty("line.separator")+
                    
            "안녕하세요 회원님 저희 홈페이지를 찾아주셔서 감사합니다"
            
            +System.getProperty("line.separator")+
            
            System.getProperty("line.separator")+
    
            " 인증번호는 " +dice+ " 입니다. "
            
            +System.getProperty("line.separator")+
            
            System.getProperty("line.separator")+
            
            "받으신 인증번호를 홈페이지에 입력해 주시면 다음으로 넘어갑니다."; // 내용
            
            try {
                MimeMessage message = mailSender.createMimeMessage();
                MimeMessageHelper messageHelper = new MimeMessageHelper(message,
                        true, "UTF-8");
 
                messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
                messageHelper.setTo(tomail); // 받는사람 이메일
                messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
                messageHelper.setText(content); // 메일 내용
                
                mailSender.send(message);
            }catch (Exception e) {
                e.printStackTrace();
            }
            
            ModelAndView mv = new ModelAndView();    //ModelAndView로 보낼 페이지를 지정하고, 보낼 값을 지정한다.
            mv.setViewName("/user/login/email_auth");     //뷰의이름
            mv.addObject("dice", dice);
            mv.addObject("uemail",uemail);
            
            System.out.println("mv : "+mv);
 
            response_email.setContentType("text/html; charset=UTF-8");
            PrintWriter out_email = response_email.getWriter();
           
            out_email.println("<script>alert('이메일이 발송되었습니다. 인증번호를 입력해주세요.');</script>");
            out_email.flush();
            
            
            
            return mv;
            
        }
    
        //이메일 인증 페이지 맵핑 메소드
        @RequestMapping(value = "/user/login/email")
        public void email() {
          
        }
    
    
    //이메일로 받은 인증번호를 입력하고 전송 버튼을 누르면 맵핑되는 메소드.
    //내가 입력한 인증번호와 메일로 입력한 인증번호가 맞는지 확인해서 맞으면 회원가입 페이지로 넘어가고,
    //틀리면 다시 원래 페이지로 돌아오는 메소드
    @RequestMapping(value = "/user/login/join_injeung{dice}", method = RequestMethod.POST)
    public ModelAndView join_injeung(String uemail, String email_injeung, @PathVariable String dice, HttpServletResponse response_equals) throws IOException {
 
        
        
        
        System.out.println("마지막 : email : "+uemail);
        
        System.out.println("마지막 : dice : "+dice);
        
        
        //페이지이동과 자료를 동시에 하기위해 ModelAndView를 사용해서 이동할 페이지와 자료를 담음
         
        ModelAndView mv = new ModelAndView();
        
        mv.setViewName("/main");
        
        mv.addObject("uemail",uemail);
        
        if (email_injeung.equals(dice)) {
            
            //인증번호가 일치할 경우 인증번호가 맞다는 창을 출력하고 회원가입창으로 이동함
            
            
            mv.setViewName("/user/login/join");
            
            mv.addObject("uemail",uemail);
            
            //만약 인증번호가 같다면 이메일을 회원가입 페이지로 같이 넘겨서 이메일을
            //한번더 입력할 필요가 없게 한다.
            
            response_equals.setContentType("text/html; charset=UTF-8");
            PrintWriter out_equals = response_equals.getWriter();
            out_equals.println("<script>alert('인증번호가 일치하였습니다. 회원가입으로 이동합니다.');</script>");
            out_equals.flush();
    
            return mv;
            
            
        }else if (email_injeung != dice) {
            
            
            ModelAndView mv2 = new ModelAndView(); 
            
            mv2.setViewName("member/email_injeung");
            mv.addObject("uemail",uemail);

            
            response_equals.setContentType("text/html; charset=UTF-8");
            PrintWriter out_equals = response_equals.getWriter();
            out_equals.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.'); history.go(-1);</script>");
            out_equals.flush();
            
    
            return mv2;
            
        }    
    
        return mv;
        
    }
    //비밀번호 찾기 이메일 인증 페이지 맵핑 메소드
    @RequestMapping(value = "/user/login/find_pass")
    public void password() {
      
    }
    
    
    
  //비밀번호 찾기 처리 (1) 이메일 발송
    @RequestMapping(value = "/user/find_pass", method = RequestMethod.POST)
    public ModelAndView find_pass(HttpServletRequest request, String user_id, String uemail,
            HttpServletResponse response_email) throws IOException{
        
        //랜덤한 난수 (인증번호)를 생성해서 이메일로 보내고 그 인증번호를 입력하면 비밀번호를 변경할 수 있는 페이지로 이동시킴
        
        Random r = new Random();
        int dice = r.nextInt(157211)+48271;
        
        String setfrom = "simbong444@gmail.com";
        String tomail = request.getParameter("uemail");    //받는 사람의 이메일
        String title = "비밀번호 찾기 인증 이메일 입니다.";    //제목
        String content =
        
                System.getProperty("line.separator")+
                
                System.getProperty("line.separator")+
                        
                "안녕하세요 회원님 저희 홈페이지를 찾아주셔서 감사합니다"
                
                +System.getProperty("line.separator")+
                
                System.getProperty("line.separator")+
        
                "비밀번호 찾기 인증번호는 " +dice+ " 입니다. "
                
                +System.getProperty("line.separator")+
                
                System.getProperty("line.separator")+
                
                "받으신 인증번호를 홈페이지에 입력해 주시면 다음으로 넘어갑니다."; // 내용
        
        try {

            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

            messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
            messageHelper.setTo(tomail); // 받는사람 이메일
            messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
            messageHelper.setText(content); // 메일 내용
            
            mailSender.send(message);
    
        } catch (Exception e) {
            System.out.println(e);
        }
        
        
        ModelAndView mv = new ModelAndView();    //ModelAndView로 보낼 페이지를 지정하고, 보낼 값을 지정한다.
        mv.setViewName("/user/login/pass_email");     //뷰의이름
        mv.addObject("dice", dice);
        mv.addObject("uemail", uemail);
        
        System.out.println("mv : "+mv);

        response_email.setContentType("text/html; charset=UTF-8");
        PrintWriter out_email = response_email.getWriter();
        out_email.println("<script>alert('이메일이 발송되었습니다. 인증번호를 입력해주세요.');</script>");
        out_email.flush();
        
        
        return mv;
        
    }
    
    
    //인증번호를 입력한 후에 확인 버튼을 누르면 자료가 넘어오는 컨트롤러
    @RequestMapping(value = "/user/pass_injeung{dice},{uemail}", method = RequestMethod.POST)
        public ModelAndView pass_injeung(String pass_injeung, @PathVariable String dice, @PathVariable String uemail, 
                HttpServletResponse response_equals) throws IOException{
        
        System.out.println("마지막 : pass_injeung : "+pass_injeung);
        
        System.out.println("마지막 : dice : "+dice);
        
        ModelAndView mv = new ModelAndView();
        
        mv.setViewName("/user/login/pass_change");
        
        mv.addObject("uemail",uemail);
        
        if (pass_injeung.equals(dice)) {
            
            //인증번호가 일치할 경우 인증번호가 맞다는 창을 출력하고 비밀번호 변경창으로 이동시킨다
        
            mv.setViewName("user/login/pass_change");
            
            mv.addObject("uemail",uemail);
            
            //만약 인증번호가 같다면 이메일을 비밀번호 변경 페이지로 넘기고, 활용할 수 있도록 한다.
            
            response_equals.setContentType("text/html; charset=UTF-8");
            PrintWriter out_equals = response_equals.getWriter();
            out_equals.println("<script>alert('인증번호가 일치하였습니다. 비밀번호 변경창으로 이동합니다.');</script>");
            out_equals.flush();
    
            return mv;
            
            
        }else if (pass_injeung != dice) {
            
            
            ModelAndView mv2 = new ModelAndView(); 
            
            mv2.setViewName("user/login/pass_email");
            
            response_equals.setContentType("text/html; charset=UTF-8");
            PrintWriter out_equals = response_equals.getWriter();
            out_equals.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.'); history.go(-1);</script>");
            out_equals.flush();
            
    
            return mv2;
            
        }    
    
        return mv;
        
    }
    
    
    
    //변경할 비밀번호를 입력한 후에 확인 버튼을 누르면 넘어오는 컨트롤러
    @RequestMapping(value = "/user/pass_change{uemail}", method = RequestMethod.POST)
    public ModelAndView pass_change(@PathVariable String uemail, HttpServletRequest request, User dto, HttpServletResponse pass) throws Exception{
                
    String member_pass = request.getParameter("user_pass");
               logger.info(member_pass);
    String e_mail1 = uemail;
                
    dto.setUemail(e_mail1);
    dto.setUpassword(member_pass);
    
    //값을 여러개 담아야 하므로 해쉬맵을 사용해서 값을 저장함
    
    Map<String, Object> map = new HashMap<>();
    
    map.put("uemail", dto.getUemail());
    map.put("user_pass", dto.getUpassword());
    logger.info(map.toString());
    userloginservice.pass_change(map);
    
    ModelAndView mv = new ModelAndView();
    
    mv.setViewName("user/login/login");
    
    return mv;
                
    }

    @RequestMapping(value = "/user/login/find_id", method = RequestMethod.GET)
    public void find_email() {
    }
    
    @RequestMapping(value = "/user/login/find_id", method = RequestMethod.POST)
    public String find_emailProc(User user, Model model) {
    	
    String email=userloginservice.findId(user);
    
    if(email!=null && email!="") 
    {
    	model.addAttribute("uemail",email);
    	return "/user/login/find_id_success";
    }
    else 
    {
    	return "/user/login/find_id_fail";
    }
  
    }

}
