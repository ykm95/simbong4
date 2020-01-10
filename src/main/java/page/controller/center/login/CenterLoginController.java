package page.controller.center.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import page.dto.Center;
import page.service.center.login.CenterLoginService;

@Controller
public class CenterLoginController {
	
	private static final Logger logger= LoggerFactory.getLogger(CenterLoginController.class);

	@Autowired JavaMailSender mailSender;
	
	@Autowired CenterLoginService centerloginservice;
	
	@RequestMapping(value = "/center/login/join",method = RequestMethod.GET)
	public void centerJoinForm() {}
	
	@RequestMapping(value = "/center/login/join",method = RequestMethod.POST)
	public String centerJoinProc(String[] foundedArr,String[] mphone, Center center) {
		
		String mp="";
		String founded = "";
		for (String temp : foundedArr) {
			founded += temp;
		}
		for (String temp2 : mphone) {
			mp +=temp2;
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd"); 
		try {
			Date date = sdf.parse(founded);
			center.setFounded(date);
			center.setMphone(mp);
			centerloginservice.centerjoin(center);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		
		return "/center/login/login";
	}
	
//	@RequestMapping(value = "/center/main")
//	public void centermain() {
//		
//	}
	
	@RequestMapping(value = "/center/login/login", method = RequestMethod.GET)
	public void centerLogin() {
	}
	
	

	@RequestMapping(value = "/center/login/login", method = RequestMethod.POST)
	public String loginProc(Center center, HttpSession session, Model model) {

		//아이디, 패스워드 DB 조회
		boolean isLogin=centerloginservice.centerlogin(center);//true면 인증 성공
		
		//결과에 따른 세션처리
		if(isLogin) {
			
			session.setMaxInactiveInterval(0);
			
			int cno=centerloginservice.getcnoByBno(center);
			center.setCenterno(cno);
			
			logger.info(center.toString());
			
			//세션에 정보 저장하기
			session.setAttribute("login", isLogin);
			session.setAttribute("loginid", center.getBusinessno());
			session.setAttribute("centerno", center.getCenterno());//세션값주기
			
			String cname= centerloginservice.getnameByemail(center);
			center.setCname(cname);
			logger.info("center" +center);
			model.addAttribute("center",center);
			return "/center/main";
		}else {
			return "/center/login/login";
		}
		
	}
	@RequestMapping(value = "/centerLogout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "/center/main";
		
	}
	
	// id 중복 체크 컨트롤러
	@RequestMapping(value = "/center/idCheck", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(@RequestParam("memail") String memail) {

		return centerloginservice.centerIdCheck(memail);
	}

	// business 중복 체크 컨트롤러
	@RequestMapping(value = "/center/bnoCheck", method = RequestMethod.GET)
	@ResponseBody
	public int bnoCheck(@RequestParam("businessno") long businessno) {
		int a = centerloginservice.userBnoCheck(businessno);
		System.out.println(a);
		return a;
	}
			
	
    //비밀번호 찾기 이메일 인증 페이지 맵핑 메소드
    @RequestMapping(value = "/center/login/find_pass")
    public void password() {
      
    }
    
    
    
  //비밀번호 찾기 처리 (1) 이메일 발송
    @RequestMapping(value = "/center/find_pass", method = RequestMethod.POST)
    public ModelAndView find_pass(HttpServletRequest request, String user_id, String memail,
            HttpServletResponse response_email) throws IOException{
        
        //랜덤한 난수 (인증번호)를 생성해서 이메일로 보내고 그 인증번호를 입력하면 비밀번호를 변경할 수 있는 페이지로 이동시킴
        
        Random r = new Random();
        int dice = r.nextInt(157211)+48271;
        
        String setfrom = "heojiyeon2@gmail.com";
        String tomail = request.getParameter("memail");    //받는 사람의 이메일
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
        mv.setViewName("/center/login/pass_email");     //뷰의이름
        mv.addObject("dice", dice);
        mv.addObject("memail", memail);
        
        System.out.println("mv : "+mv);

        response_email.setContentType("text/html; charset=UTF-8");
        PrintWriter out_email = response_email.getWriter();
        out_email.println("<script>alert('이메일이 발송되었습니다. 인증번호를 입력해주세요.');</script>");
        out_email.flush();
        
        
        return mv;
        
    }
    
    
    //인증번호를 입력한 후에 확인 버튼을 누르면 자료가 넘어오는 컨트롤러
    @RequestMapping(value = "/center/pass_injeung{dice},{memail}", method = RequestMethod.POST)
        public ModelAndView pass_injeung(String pass_injeung, @PathVariable String dice, @PathVariable String memail, 
                HttpServletResponse response_equals) throws IOException{
        
        System.out.println("마지막 : pass_injeung : "+pass_injeung);
        
        System.out.println("마지막 : dice : "+dice);
        
        ModelAndView mv = new ModelAndView();
        
        mv.setViewName("/center/login/pass_change");
        
        mv.addObject("memail",memail);
        
        if (pass_injeung.equals(dice)) {
            
            //인증번호가 일치할 경우 인증번호가 맞다는 창을 출력하고 비밀번호 변경창으로 이동시킨다
        
            mv.setViewName("center/login/pass_change");
            
            mv.addObject("memail",memail);
            
            //만약 인증번호가 같다면 이메일을 비밀번호 변경 페이지로 넘기고, 활용할 수 있도록 한다.
            
            response_equals.setContentType("text/html; charset=UTF-8");
            PrintWriter out_equals = response_equals.getWriter();
            out_equals.println("<script>alert('인증번호가 일치하였습니다. 비밀번호 변경창으로 이동합니다.');</script>");
            out_equals.flush();
    
            return mv;
            
            
        }else if (pass_injeung != dice) {
            
            
            ModelAndView mv2 = new ModelAndView(); 
            
            mv2.setViewName("center/login/pass_email");
            
            response_equals.setContentType("text/html; charset=UTF-8");
            PrintWriter out_equals = response_equals.getWriter();
            out_equals.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.'); history.go(-1);</script>");
            out_equals.flush();
            
    
            return mv2;
            
        }    
    
        return mv;
        
    }
    
    
    
    //변경할 비밀번호를 입력한 후에 확인 버튼을 누르면 넘어오는 컨트롤러
    @RequestMapping(value = "/center/pass_change{memail}", method = RequestMethod.POST)
    public ModelAndView pass_change(@PathVariable String memail, HttpServletRequest request, Center dto, HttpServletResponse pass) throws Exception{
                
    String member_pass = request.getParameter("center_pass");
               logger.info(member_pass);
    String e_mail1 = memail;
                
    dto.setMemail(e_mail1);
    dto.setCpassword(member_pass);
    
    //값을 여러개 담아야 하므로 해쉬맵을 사용해서 값을 저장함
    
    Map<String, Object> map = new HashMap<>();
    
    map.put("memail", dto.getMemail());
    map.put("center_pass", dto.getCpassword());
    logger.info(map.toString());
    centerloginservice.pass_change(map);
    
    ModelAndView mv = new ModelAndView();
    
    mv.setViewName("center/login/login");
    
    return mv;
                
    }

    @RequestMapping(value = "/center/login/find_id", method = RequestMethod.GET)
    public void find_email() {
    }
    
    @RequestMapping(value = "/center/login/find_id", method = RequestMethod.POST)
    public String find_emailProc(Center center, Model model) {
    	
    String email=centerloginservice.findId(center);
    
    if(email!=null && email!="") 
    {
    	model.addAttribute("memail",email);
    	return "/center/login/find_id_success";
    }
    else 
    {
    	return "/center/login/find_id_fail";
    }
  
    }

}
