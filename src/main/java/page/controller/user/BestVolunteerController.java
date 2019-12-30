package page.controller.user;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import page.dto.BestVolunteer;
import page.service.user.best.BestVolunteerService;
import page.util.Paging;



@Controller
public class BestVolunteerController {
	
	@Autowired BestVolunteerService bestVolunteerService;

	private static final Logger logger =LoggerFactory.getLogger(BestVolunteerController.class); 

	@RequestMapping(value = "/user/best/bestlist", method = RequestMethod.GET)
	public void bestVolunteerList(Model model, Paging paging){
		
//		logger.info("성공");
		paging = bestVolunteerService.getPaging(paging);
		
		if( paging.getKeyword() !=null) {
		
		List<BestVolunteer> blist= bestVolunteerService.getSearchList(paging);
		
		paging = bestVolunteerService.getPaging(paging);
		model.addAttribute("blist", blist);
		logger.info("검색실행");
		
		}else {
		List<BestVolunteer> blist= bestVolunteerService.getBestList(paging);
		model.addAttribute("blist", blist);
		logger.info("검색X");
		}
		model.addAttribute("paging", paging);
	}
	
	@RequestMapping(value = "/user/best/bestview", method = RequestMethod.GET)
	public void bestVolunteerView(int bestno, Model model) {
		
		BestVolunteer view = new BestVolunteer();
		view = bestVolunteerService.bestView(bestno);
		
		model.addAttribute("view", view);
	}

}
