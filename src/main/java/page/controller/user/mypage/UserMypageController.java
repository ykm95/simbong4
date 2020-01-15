package page.controller.user.mypage;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import page.dto.Applicant;
import page.dto.Question;
import page.dto.User;

import page.dto.Volunteer;

import page.dto.Volrecord;
import page.service.user.mypage.UserMypageService;
import page.util.Paging;
import page.util.PagingApplicant;

@Controller
public class UserMypageController {

	@Autowired ServletContext context;
	
	@Autowired
	UserMypageService userMypageService;

	private static final Logger logger = LoggerFactory.getLogger(UserMypageController.class);

	@RequestMapping(value = "/user/mypage/mypagemain")
	public void centerMypageMain() {
	}

	@RequestMapping(value = "/user/mypage/updatepwchk", method = RequestMethod.GET)
	public String updatePwCheck(User user, HttpSession session) {
		
		user.setUemail((String) session.getAttribute("loginid"));
		
		int ulogin;
		
		ulogin = userMypageService.getUlogin(user);
		
		if(ulogin == 1) {
			return "redirect:/user/mypage/googleupdate?uemail=" + user.getUemail();
		}
		
		logger.info("회원정보수정-비밀번호입력요구창 접속성공");
		
		return "/user/mypage/updatepwchk";
		
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
	public String userInformationUpdate(Model model, User user) {
		logger.info("[GET]-/user/mypage/update - " + user.toString());

		user = userMypageService.getInformation(user);

		logger.info(user.toString());

		model.addAttribute("user", user);

		return "/user/mypage/updateForm";
	}

	@RequestMapping(value = "/user/mypage/update", method = RequestMethod.POST)
	public String userInfomationUpdateProc(User user, HttpSession session) {

		logger.info("[POST]-/user/mypage/update");

		logger.info(user.toString());

		user.setUemail((String) session.getAttribute("loginid"));

		logger.info(user.toString());

		userMypageService.userInformationUpdate(user);

		return "redirect:/user/mypage/mypagemain";
	}
	
	@RequestMapping(value="/user/mypage/googleupdate", method = RequestMethod.GET)
	public String googleInformationUpdate(User user, Model model) {
		logger.info("[GET]-/user/mypage/googleupdate - " + user.toString());

		user = userMypageService.getInformation(user);

		logger.info(user.toString());

		model.addAttribute("user", user);

		return "/user/mypage/googleupdateForm";
	}
	
	@RequestMapping(value = "/user/mypage/googleupdate", method = RequestMethod.POST)
	public String googleInfomationUpdateProc(User user, HttpSession session) {

		logger.info("[POST]-/user/mypage/googleupdate");

		logger.info(user.toString());

		user.setUemail((String) session.getAttribute("loginid"));

		logger.info(user.toString());

		userMypageService.googleInformationUpdate(user);

		return "redirect:/user/mypage/mypagemain";
	}
	
	@RequestMapping(value = "/user/mypage/deletepwchk", method = RequestMethod.GET)
	public String deletePwCheck(User user, HttpSession session) {
		user.setUemail((String) session.getAttribute("loginid"));
		
		int ulogin;
		
		ulogin = userMypageService.getUlogin(user);
		
		if(ulogin == 1) {
			return "redirect:/user/mypage/delete?uemail=" + user.getUemail();
		}
		
		logger.info("회원탈퇴-비밀번호입력요구창 접속성공");
		
		return "/user/mypage/deletepwchk";
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
	public String userDeleteProc(User user, HttpSession session) {
		logger.info("[POST]-/user/mypage/delete");
		
		logger.info(user.toString());
		
		userMypageService.userInformationDelete(user);
		
		session.invalidate();
		
		return "/main";
	}
	

//	public void performanceList(Model model) {
//
////		List<VolunteerRecord> list = userMypageService.getperformanceList();
//	}
//
//	public void perfomanceList(Model model, String term) {
//
////		List<VolunteerRecord> list = userMypageService.getperformanceList(term);
//	}
	@RequestMapping(value = "/user/mypage/pdf", method = RequestMethod.GET)
	public void pdfView(Model model, int applicantno) {
		Volunteer pdf = new Volunteer();
		pdf= userMypageService.getPdfData(applicantno);
		
		model.addAttribute("pdf", pdf);
		logger.info(pdf.toString());
	}

	@RequestMapping(value="/user/mypage/questionlist", method=RequestMethod.GET)
	public void quesetionList(Model model,Paging paging) {
		
		paging = userMypageService.getPaging(paging);
		
		List<Question> list = userMypageService.getList(paging);
		
//		logger.info(list.toString());
		model.addAttribute("paging", paging);
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value="/user/mypage/questionview", method=RequestMethod.GET)
	public void viewQuestion(int questionno, Model model) {		
		
		Question question = userMypageService.viewQST(questionno);
		
		
		model.addAttribute("question", question);
	}
	
	@RequestMapping(value="/user/mypage/writequestion", method=RequestMethod.GET)
	public String writeQuestion() {

		logger.info("접속성공");
		
		return "/user/mypage/questionForm";
	}
	
	@RequestMapping(value="/user/mypage/writequestion", method=RequestMethod.POST)
	public String writeQuestionProc(Question question,
								  User user,
								  HttpSession session,
								  @RequestParam(value="file") MultipartFile file) {

		//문의번호 불러오는 코드
		int questionno;
		questionno = userMypageService.getQuestionno();		
//		logger.info("questionno : " + questionno);
		question.setQuestionno(questionno);		
		

		user.setUemail((String) session.getAttribute("loginid"));
		user.setUserno((int)session.getAttribute("userno"));	
		
		question.setUserno(user.getUserno());

//		logger.info(centerquestion.toString());
		
//		logger.info("파일업로드 처리");
//		
		logger.info("file : " + file);
		logger.info("file : " + file.getOriginalFilename());
		
		logger.info(context.getRealPath("upload"));

		userMypageService.writeQST(question,file);
		
		return "/user/mypage/mypagemain";		

	}
	
	@RequestMapping(value="/user/mypage/deletequestion", method=RequestMethod.GET)
	public String deleteQuestion(int questionno, Model model) {

		logger.info(questionno+"");
		Question question = userMypageService.viewQST(questionno);		
		
		model.addAttribute("question", question);
		
		return "/user/mypage/deletequestionForm";
	}
	
	@RequestMapping(value="/user/mypage/deletequestion", method=RequestMethod.POST)
	public String deleteQeustionProc(Question question) {
		
		userMypageService.deleteQST(question);
		
		return "redirect:/user/mypage/mypagemain";
	}
	
	@RequestMapping(value="/user/mypage/applicationresult", method=RequestMethod.GET)
	public void applicationResult(HttpSession session,
								  User user,
								  Applicant applicant,
								  Model model,
								  Paging paging) {
		
		user.setUemail((String)session.getAttribute("loginid"));		
		user.setUserno((int)session.getAttribute("userno"));
		
		paging.setUserno(user.getUserno());
		
		paging = userMypageService.getAppPaging(paging);
		
		paging.setUserno(user.getUserno());
		
		logger.info(paging.toString());
		
		List<Applicant> list = userMypageService.getApplicant(paging);
		
		logger.info(list+"");
		
		model.addAttribute("paging", paging);
		model.addAttribute("list", list);
		
		
	}

	@RequestMapping(value="/user/mypage/performancelist", method=RequestMethod.GET)
	public void performanceList(Model model,
								HttpSession session,
								User user,
								PagingApplicant paging) {
		
		user.setUemail((String)session.getAttribute("loginid"));		
		user.setUserno((int)session.getAttribute("userno"));
		
		paging.setUserno(user.getUserno());

		paging = userMypageService.getPerformancePaging(paging);
		
		paging.setUserno(user.getUserno());
		
		List<PagingApplicant> list = userMypageService.getPerformance(paging);
		
		logger.info(list+"");
		
		model.addAttribute("paging", paging);
		model.addAttribute("list", list);

	}
	@RequestMapping(value="/user/mypage/mypagemain", method = RequestMethod.GET)
	public void MypageView(int userno, Model model) {
		
		User mypageView = new User();
		mypageView = userMypageService.Userview(userno);
		
		logger.info(mypageView.toString());
		model.addAttribute("mypageView", mypageView);
	}
}
