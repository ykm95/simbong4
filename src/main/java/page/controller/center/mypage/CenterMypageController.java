package page.controller.center.mypage;

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

import page.dto.Center;
import page.dto.CenterQuestion;
import page.service.center.mypage.CenterMypageService;
import page.util.Paging;

@Controller
public class CenterMypageController {

	private static final Logger logger = LoggerFactory.getLogger(CenterMypageController.class);

	@Autowired
	CenterMypageService centerMypageService;

	@Autowired
	ServletContext context;
	
	
	@RequestMapping(value="/center/mypage/mypagemain")
	public void centerMypageMain() { }
	
	@RequestMapping(value="/center/mypage/updatepwchk", method=RequestMethod.GET)
	public void updatePwCheck() { 
		logger.info("회원정보수정-비밀번호입력요구창 접속성공");		
	}
	
	@RequestMapping(value="/center/mypage/updatepwchk", method=RequestMethod.POST)
	public String updatePwCheckProc(HttpSession session, Center center) {		

		logger.info(center.toString());


		center.setBusinessno((String) session.getAttribute("loginid"));

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
		

		center.setBusinessno((String) session.getAttribute("loginid"));
		
		logger.info(center.toString());
		

		centerMypageService.centerInformationUpdate(center);
		

		return "redirect:/center/mypage/mypagemain?centerno="+center.getCenterno();
	}
	
	@RequestMapping(value="/center/mypage/deletepwchk", method=RequestMethod.GET)
	public void deletePwCheck() {
		logger.info("회원탈퇴-비밀번호입력요구창 접속성공");
	}
	
	@RequestMapping(value="/center/mypage/deletepwchk", method=RequestMethod.POST)
	public String deletePwCheckProc(HttpSession session, Center center) {
		logger.info(center.toString());


		center.setBusinessno((String) session.getAttribute("loginid"));
		
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
	
	@RequestMapping(value="/center/mypage/questionlist", method=RequestMethod.GET)
	public void quesetionList(Model model, Paging paging) {
		
		paging = centerMypageService.getPaging(paging);
		
		List<CenterQuestion> list = centerMypageService.getList(paging);
		
//		logger.info(list.toString());
		
		model.addAttribute("paging", paging);
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value="/center/mypage/questionview", method=RequestMethod.GET)
	public void viewQuestion(int questionno, Model model) {		
		
		CenterQuestion centerquestion = centerMypageService.viewQST(questionno);
		
		logger.info(centerquestion.toString());
		
		model.addAttribute("centerquestion", centerquestion);
	}
	
	
	@RequestMapping(value="/center/mypage/writequestion", method=RequestMethod.GET)
	public String writeQuestion() {

		logger.info("접속성공");
		
		return "/center/mypage/questionForm";
	}
	
	@RequestMapping(value="/center/mypage/writequestion", method=RequestMethod.POST)
	public String writeQuestionProc(CenterQuestion centerquestion,
								  Center center,
								  HttpSession session,
								  @RequestParam(value="file") MultipartFile file) {

		//문의번호 불러오는 코드
		int questionno;
		questionno = centerMypageService.getQuestionno();		
//		logger.info("questionno : " + questionno);
		centerquestion.setQuestionno(questionno);		
		
		//센터번호 불러오는 코드

		center.setBusinessno((String) session.getAttribute("loginid"));
		center.setCenterno((int) session.getAttribute("centerno"));
		
		centerquestion.setCenterno(center.getCenterno());

//		logger.info(centerquestion.toString());
		
//		logger.info("파일업로드 처리");
//		
//		logger.info("file : " + file);
//		logger.info("file : " + file.getOriginalFilename());
//		
//		logger.info(context.getRealPath("upload"));

		centerMypageService.writeQST(centerquestion,file);
		
		return "redirect:/center/mypage/mypagemain?centerno="+center.getCenterno();	

	}

	@RequestMapping(value="/center/mypage/deletequestion", method=RequestMethod.GET)
	public String deleteQuestion(int questionno, Model model) {

		logger.info(questionno+"");
		CenterQuestion centerquestion = centerMypageService.viewQST(questionno);
		
		logger.info(centerquestion.toString());
		
		model.addAttribute("centerquestion", centerquestion);
		
		return "/center/mypage/deletequestionForm";
	}
	
	@RequestMapping(value="/center/mypage/deletequestion", method=RequestMethod.POST)
	public String deleteQeustionProc(CenterQuestion centerquestion, Center center, HttpSession session) {
		
		centerMypageService.deleteQST(centerquestion);
		
		center.setCenterno((int)session.getAttribute("centerno"));
		return "redirect:/center/mypage/mypagemain?centerno="+center.getCenterno();
	}
	@RequestMapping(value = "/center/mypage/mypagemain", method = RequestMethod.GET)
	public void centerMypage(int centerno, Model model){
		
		Center Cmypage = new Center();
		Cmypage = centerMypageService.centerView(centerno);
		
		model.addAttribute("Cmypage", Cmypage);
	}

}
