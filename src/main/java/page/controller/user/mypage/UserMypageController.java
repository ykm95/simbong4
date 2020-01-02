package page.controller.user.mypage;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import page.dto.Center;
import page.dto.User;
import page.service.user.mypage.UserMypageService;

@Controller
public class UserMypageController {

	@Autowired
	UserMypageService userMypageService;

	private static final Logger logger = LoggerFactory.getLogger(UserMypageController.class);

	@RequestMapping(value = "/user/mypage/mypagemain")
	public void centerMypageMain() {
	}

	@RequestMapping(value = "/user/mypage/updatepwchk", method = RequestMethod.GET)
	public void updatePwCheck() {
		logger.info("회원정보수정-비밀번호입력요구창 접속성공");
	}

	@RequestMapping(value = "/user/mypage/updatepwchk", method = RequestMethod.POST)
	public String updatePwCheckProc(HttpSession session, User user) {

		user.setUemail((String) session.getAttribute("loginid"));

		logger.info(user.toString());

		boolean res = userMypageService.checkPw(user);

		if (res) { // 맞을때
			return "redirect:/user/mypage/update?uemail=" + user.getUemail();
		}

		// 틀릴때
		return "redirect:/user/mypage/updatepwchk";
	}

	@RequestMapping(value = "/user/mypage/update", method = RequestMethod.GET)
	public String centerInformationUpdate(Model model, User user) {
		logger.info("[GET]-/user/mypage/update - " + user.toString());

		user = userMypageService.getInformation(user);

		logger.info(user.toString());

		model.addAttribute("user", user);

		return "/user/mypage/updateForm";
	}

	@RequestMapping(value = "/user/mypage/update", method = RequestMethod.POST)
	public String centerInfomationUpdateProc(User user, HttpSession session) {

		logger.info("[POST]-/user/mypage/update");

		logger.info(user.toString());

		user.setUemail((String) session.getAttribute("loginid"));

		logger.info(user.toString());

		userMypageService.userInformationUpdate(user);

		return "redirect:/user/mypage/mypagemain";
	}

	@RequestMapping(value = "/user/mypage/deletepwchk", method = RequestMethod.GET)
	public void deletePwCheck() {
		logger.info("회원탈퇴-비밀번호입력요구창 접속성공");
	}

	@RequestMapping(value = "/user/mypage/deletepwchk", method = RequestMethod.POST)
	public String deletePwCheckProc(HttpSession session, User user) {

		user.setUemail((String) session.getAttribute("loginid"));

		logger.info(user.toString());

		boolean res = userMypageService.checkPw(user);

		if (res) { // 맞을때
			return "redirect:/user/mypage/delete?uemail=" + user.getUemail();
		}

		// 틀릴때
		return "redirect:/user/mypage/deletepwchk";
	}
	
	@RequestMapping(value="/user/mypage/delete", method=RequestMethod.GET)
	public String userDelete(Model model,User user) {
		logger.info("회원탈퇴폼 접속완료");
		
		logger.info(user.toString());
		
		user = userMypageService.getInformation(user);		
		
		model.addAttribute("user", user);
		
		
		return "/user/mypage/deleteForm";
	}

	@RequestMapping(value="user/mypage/delete", method=RequestMethod.POST)
	public String centerDeleteProc(User user, HttpSession session) {
		logger.info("[POST]-/user/mypage/delete");
		
		logger.info(user.toString());
		
		userMypageService.userInformationDelete(user);
		
		session.invalidate();
		
		return "/main";
	}
}
