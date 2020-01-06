package page.controller.admin.login;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import page.dto.Admin;

@Controller
public class AdminLoginController {

	@Autowired
	private page.service.admin.login.LoginService loginService;

	private static final Logger logger = LoggerFactory.getLogger(AdminLoginController.class);

	// 로그인페이지
	@RequestMapping(value = "/admin/adminLogin/login", method = RequestMethod.GET)
	public void login() {
	}

	// 로그인하기
	@ResponseBody
	@RequestMapping(value = "/admin/adminLogin/login", method = RequestMethod.POST)
	public Map<String, Object> loginProcess(Admin admin, Model model, HttpSession session) {
		return loginService.loginProcess(admin, model,session);
	}

	// 메인페이지
	@RequestMapping(value = "/admin/adminLogin/main")
	public String mainPg(Model model, HttpSession session) {
		model.addAttribute("adminId", session.getAttribute("loginId"));
		return "/admin/adminLogin/main";
	}

	// 로그아웃
	@RequestMapping(value = "/admin/adminLogin/logout")
	public String logout(HttpSession session) {
		loginService.logout(session);
		return "/admin/adminLogin/login";
	}
}
