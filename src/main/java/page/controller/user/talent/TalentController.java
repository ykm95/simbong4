package page.controller.user.talent;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import page.dto.Talent;
import page.service.user.talent.TalentService;
import page.util.PagingTalent;

@Controller
public class TalentController {
	
	  @Autowired private TalentService talentService;
	
	  private static final Logger logger= LoggerFactory.getLogger(TalentController.class);
	
	  @RequestMapping(value="/user/talent/list")
	  public void talentList(Model model, PagingTalent paging, HttpServletRequest req) {
		  
		  logger.info(paging.toString());
		  
		  paging = talentService.getPaging(paging);
		  logger.info(paging.toString());
		  
		  List<PagingTalent> talentlist = talentService.getTalentList(paging);
		  
		  int count = talentService.getCntTalent(paging);
		  
		  model.addAttribute("count", count);
		  model.addAttribute("paging", paging);
		  model.addAttribute("list", talentlist);
			
		  // OK!!!! 
	  }
	  
	  
	  @RequestMapping(value="/user/talent/view")
	  public void talentView(int talentno, Model model) {
		  
		  Talent talent = talentService.getTalent(talentno);
		  
		  talent.setTest(talent.getTalent_cycle());
		  
		  model.addAttribute("talent", talent);
		  
		  
	  }
	  
	  @RequestMapping(value="/user/talent/write", method=RequestMethod.GET)
	  public void talentWrite() {
		 
	  }
	  
	  @RequestMapping(value="/user/talent/write", method=RequestMethod.POST)
	  public String talentWriteProc(PagingTalent paging) {
		  
		  talentService.write(paging);
		  
		  return "redirect:/user/talent/list";
	  }
	  
	  @RequestMapping(value="/user/talent/update", method=RequestMethod.GET)
	  public void talentUpdate(int talentno, Model model) {
		  
		  logger.info("서비스 전 : " + talentno);
		  
		  Talent talent = talentService.getTalent(talentno);
		  
		  logger.info("서비스 후 : " + talent);
		  
		  talent.setTest(talent.getTalent_cycle());
		  
		  model.addAttribute("talent", talent);
	  }
	  
	  @RequestMapping(value="/user/talent/update", method=RequestMethod.POST)
	  public String talentUpdateProc(Talent talent) {
		  
		  talentService.update(talent);
		  
		  return "redirect:/user/talent/list";
	  }
	  
	  @RequestMapping(value="/user/talent/delete")
	  public String talentDelete(int talentno) {
		  
		  talentService.delete(talentno);
		  
		  return "redirect:/user/talent/list";
	  }
}
