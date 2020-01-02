package page.controller.center.talent;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import page.dto.Talent;
import page.service.center.talent.TalentService;
import page.util.Paging;


@Controller
public class TalentController {

	private static final Logger logger = LoggerFactory.getLogger(TalentController.class);
	
	@Autowired TalentService talentService;
	
	@RequestMapping(value = "/center/talent/list", method = RequestMethod.GET)
	public void list(Paging paging, Model model) {
		
		paging = talentService.getPaging(paging);
		
		model.addAttribute("paging", paging);
		
		List list = talentService.getTalentList(paging);
		
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value = "/center/talent/view", method = RequestMethod.GET)
	public void view(Talent talent, Model model) {
		
		talent = talentService.getTalent(talent);
		
		model.addAttribute("tal", talent);
	}
}
