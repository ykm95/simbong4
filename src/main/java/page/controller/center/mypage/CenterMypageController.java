package page.controller.center.mypage;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import page.dto.Center;
import page.service.center.mypage.CenterMypageService;

@Controller
public class CenterMypageController {

	private static final Logger logger = LoggerFactory.getLogger(CenterMypageController.class);

	@Autowired
	CenterMypageService centerMypageService;
	
	@RequestMapping(value="/center/login", method=RequestMethod.GET)
	public void centerLogin() {
		logger.info("센터회원 로그인폼 접속성공");
	}
	
	@RequestMapping(value="center/login", method=RequestMethod.POST)
	public String centerLoginProc(Center center, HttpSession session) {
		
		boolean isLogin = centerMypageService.login(center);
		
		if( isLogin ) {
			
			session.setMaxInactiveInterval(0);
			
			session.setAttribute("login", isLogin);
			session.setAttribute("loginId", center.getBusinessno());
			session.setAttribute("centerno", 1);
		}
		
		return "redirect:/center/main";
	}
	
	@RequestMapping(value="center/logout")
	public String centerLogout(HttpSession session) { 
		
		session.invalidate();
		
		return "redirect:/center/main";
	}
	
	@RequestMapping(value="/center/mypage/mypagemain")
	public void centerMypageMain() { }
	
	@RequestMapping(value="/center/mypage/updatepwchk", method=RequestMethod.GET)
	public void updatePwCheck() { 
		logger.info("회원정보수정-비밀번호입력요구창 접속성공");		
	}
	
	@RequestMapping(value="/center/mypage/updatepwchk", method=RequestMethod.POST)
	public String updatePwCheckProc(HttpSession session, Center center) {		

		logger.info(center.toString());

		center.setBusinessno((int) session.getAttribute("loginId"));
		boolean res = centerMypageService.checkPw(center);
		
		if( res ) { // 맞을때
			return "redirect:/center/mypage/update?businessno=" + center.getBusinessno();
		}
		
		// 틀릴때
		return "redirect:/center/mypage/updatepwchk";
	}
	
	@RequestMapping(value="/center/mypage/update", method=RequestMethod.GET)
	public String centerInformationUpdate(Model model, Center center) {
		logger.info("[GET]-/center/mypage/update - " + center.toString());
		
		center = centerMypageService.getInformation(center);
		
		logger.info(center.toString());
		
		model.addAttribute("center", center);
		
		return "/center/mypage/updateForm";
	}

	@RequestMapping(value="/center/mypage/update", method=RequestMethod.POST)
	public String centerInfomationUpdateProc(Center center,HttpSession session) {
		
		logger.info("[POST]-/center/mypage/update");
		
		logger.info(center.toString());
		
		center.setBusinessno((int) session.getAttribute("loginId"));
		
		logger.info(center.toString());
		

		centerMypageService.centerInformationUpdate(center);

		return "redirect:/center/mypage/mypagemain";
	}
	
	@RequestMapping(value="/center/mypage/deletepwchk", method=RequestMethod.GET)
	public void deletePwCheck() {
		logger.info("회원탈퇴-비밀번호입력요구창 접속성공");
	}
	
	@RequestMapping(value="/center/mypage/deletepwchk", method=RequestMethod.POST)
	public String deletePwCheckProc(HttpSession session, Center center) {
		logger.info(center.toString());

		center.setBusinessno((int) session.getAttribute("loginId"));
		
		boolean res = centerMypageService.checkPw(center);
		
		if( res ) { // 맞을때
			return "redirect:/center/mypage/delete?businessno=" + center.getBusinessno();
		}
		
		// 틀릴때
		return "redirect:/center/mypage/deletepwchk";
	}
	
	@RequestMapping(value="/center/mypage/delete", method=RequestMethod.GET)
	public String centerDelete(Model model,Center center) {
		logger.info("회원탈퇴폼 접속완료");
		
		logger.info(center.toString());
		
		center = centerMypageService.getInformation(center);		
		
		model.addAttribute("center", center);
		
		
		return "/center/mypage/deleteForm";
	}

	@RequestMapping(value="center/mypage/delete", method=RequestMethod.POST)
	public String centerDeleteProc(Center center, HttpSession session) {
		logger.info("[POST]-/center/mypage/delete");
		
		logger.info(center.toString());
		
		centerMypageService.centerInformationDelete(center);
		
		session.invalidate();
		
		return "/center/main";
	}
	
//	public void writeQuestion(Question question) {
//
//		centerMypageService.writeQST(question);
//	}
//
//	public void deleteQuestion(Question question) {
//
//		centerMypageService.deleteQST(question);
//	}
//
//	public List<Question> viewQuestion(Question question) {
//
//		centerMypageService.viewQST(question);
//		return null;
//	}
}
