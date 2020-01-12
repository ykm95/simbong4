package page.controller.user.uservolunteer;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import page.dto.Applicant;
import page.dto.Volunteer;
import page.service.user.uservolunteer.UserVolunteerService;
import page.util.PagingVolunteer;

@Controller
public class UserVolunteerController {
	
	  @Autowired private UserVolunteerService userVolunteerService;
	
	  private static final Logger logger= LoggerFactory.getLogger(UserVolunteerController.class);
	  
	  @RequestMapping(value="/user/volunteer/list")
	  public void volunteerList(Model model, PagingVolunteer paging) {
		  
		  paging = userVolunteerService.getPaging(paging);
  		  
		  List<PagingVolunteer> volunteerlist = userVolunteerService.getVolunteerList(paging);
		  
		  int count = userVolunteerService.getCntVolunteerAll(paging);
		  
		  model.addAttribute("list", volunteerlist);
		  model.addAttribute("paging", paging);
		  model.addAttribute("vcount", count);
	  }
	 
	  @RequestMapping(value="/user/volunteer/view")
	  public void volunteerView(int volunteerno, Model model, HttpSession session) {
		 
		  Volunteer volunteer = userVolunteerService.getVolunteer(volunteerno);
		  
//		  List<Applicant> applicantlist = userVolunteerService.getAplByNo(volunteerno);
		  
		  model.addAttribute("vol", volunteer);
//		  model.addAttribute("prtlist", applicantlist);
		  if(session.getAttribute("loginid") != null) {
		  int userno = userVolunteerService.getUserno((String)session.getAttribute("loginid"));
		  //2. 유저번호랑, 봉사번호를 DTO에 담아준다.
		  Applicant applicant = new Applicant();
		  
		  applicant.setUserno(userno);
		  applicant.setVolunteerno(volunteerno);
		 			  
		  
		  //2. DB에 추천 여부 검사
		  boolean b = userVolunteerService.isApplicant2(applicant);
		  
		  model.addAttribute("isApplicant", b);
		  }
	  }
	  
	  @RequestMapping(value="/user/volunteer/view_ok")
	  public ModelAndView volunteerView(ModelAndView mav, HttpSession session, int volunteerno) {

		// 추천테이블이 만약에 추천번호(기본키), 유저번호(외래키), 게시판번호(외래키)
		// 유저번호로 select를 판단할거다 -> 있으면 추천취소 뜨게 할거고, 없으면 추천 뜨게할거다.
		//로그인 상태만 처리
		  if(session.getAttribute("loginid") != null) {
			  //1. 로그인했을때 세션에 저장된 이메일을 통해 유전번호를 가져와여
			  int userno = userVolunteerService.getUserno((String)session.getAttribute("loginid"));
			  //2. 유저번호랑, 봉사번호를 DTO에 담아준다.
			  Applicant applicant = new Applicant();
			  
			  applicant.setUserno(userno);
			  applicant.setVolunteerno(volunteerno);
			 			  
			  
			  //2. DB에 추천 여부 검사
			  boolean b = userVolunteerService.isApplicant(applicant);
			  
			  
			 // 모델값으로 지정
			 mav.addObject("select", b);
			 // viewName 지정하기
			 mav.setViewName("jsonView");
			  
			  
		  }
		
		return mav;
	  }
	  
}