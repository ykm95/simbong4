package page.controller.admin.login;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import page.dto.Admin;


@Controller
public class AdminLoginController {
	
	@Autowired private page.service.admin.login.LoginService loginService;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminLoginController.class);
	
	@RequestMapping(value="/admin/adminLogin/login", method= RequestMethod.GET)
	public void login() {}
	
	@RequestMapping(value="/admin/adminLogin/login", method=RequestMethod.POST)
	public String loginprocess(Admin admin, HttpSession session) {
			
	logger.info(admin.toString());
			
	//아이디, 패스워드 DB 조회
	boolean isLogin = loginService.login(admin); //true-인증 성공
			
	//결과에 따른 세션처리
	if(isLogin) {
		session.setAttribute("login", isLogin);
		session.setAttribute("loginid", admin.getAdminId());
			}
			
			return "/admin/adminLogin/main";
			
		}
		
		
		@RequestMapping(value="/admin/adminLogin/logout")
		public String logout(HttpSession session) {
			
			session.invalidate();
			
			return "redirect:/admin/adminLogin/main";
			
		}
	//메인페이지(비로그인 상태)
		
	//로그인(비로그인 → 로그인  / 로그인시 회원관리, 문의글관리, 게시물관리 세가지 버튼중 하나를 누르면 페이지로 이동)
	
	//로그아웃버튼과 동시에 메인페이지 리디렉션(로그인 →비로그인, 로그아웃되었습니다 모달창은 여유되면 만들기)

}
