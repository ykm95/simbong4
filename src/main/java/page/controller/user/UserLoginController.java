package page.controller.user;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import page.dto.User;
import page.service.user.login.GoogleService;
import page.service.user.login.UserLoginService;

@Controller
public class UserLoginController {

	private static final Logger logger= LoggerFactory.getLogger(UserLoginController.class);

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
		
		userloginservice.userjoin(user);
		
		return "main";
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
	public String loginProc(User user, HttpSession session, Model model) {
		
		logger.info("user" +user);
		
			
		//아이디, 패스워드 DB 조회
		boolean isLogin=userloginservice.userlogin(user);//true면 인증 성공
		
		//결과에 따른 세션처리
		if(isLogin) {
			//세션에 정보 저장하기
			session.setAttribute("login", isLogin);
			session.setAttribute("loginid", user.getUemail());
		}else {
			return "/user/login/login";
		}
		return "/main";
	}
	@RequestMapping(value = "/userLogout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "/main";
		
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
		
		googleService.usergooglejoin(user);
		
		return "/main";
	}
	
	
	//구글 로그인 성공시 callback호출 메소드

		@RequestMapping(value = "/googleLogin/googleSignInCallback", method = { RequestMethod.GET, RequestMethod.POST })

		public String googleCallback(String code, HttpSession session) {

			logger.info("여기는여기는 googleCallback");

			try {

				//구글 로그인 데이터 파싱 및 설정 위한 서비스 호출

				googleService.setGoogleLogin(code, session, googleOAuth2Parameters);

			} catch (IOException e) {


				e.printStackTrace();
			}

			
			return "user/login/googlejoin";

		}
}
