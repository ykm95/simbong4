package page.controller.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import page.dto.Participant;
import page.dto.Volunteer;
import page.service.user.uservolunteer.UserVolunteerService;
import page.util.PagingVolunteer;

@Controller
public class UserVolunteerController {
	
	  @Autowired private UserVolunteerService userVolunteerService;
	
	  private static final Logger logger= LoggerFactory.getLogger(UserVolunteerController.class);
	  
	  @RequestMapping(value="/user/volunteer/list")
	  public void volunteerList(Model model, PagingVolunteer paging, HttpServletRequest req) {
		  
		  paging = userVolunteerService.getPaging(paging, req);
  		  
		  List<Volunteer> volunteerlist = userVolunteerService.getVolunteerList(paging);
		  
		  int count = userVolunteerService.getCntVolunteerAll(paging);
		  
		  model.addAttribute("list", volunteerlist);
		  model.addAttribute("paging", paging);
		  model.addAttribute("vcount", count);
	  }
	 
	  @RequestMapping(value="/user/volunteer/view")
	  public void volunteerView(int volunteerno, Model model) {
		  Volunteer volunteer = userVolunteerService.getVolunteer(volunteerno);
		  
		  List<Participant> prtlist = userVolunteerService.getPrtByNo(volunteerno);
		  
		  model.addAttribute("volunteer", volunteer);
		  model.addAttribute("prtlist", prtlist);
	  }
	  
}
