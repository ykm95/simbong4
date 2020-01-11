package page.controller.center.volunteer;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import page.dto.Area;
import page.dto.Volunteer;
import page.service.center.volunteer.VolunteerService;
import page.util.PagingVolunteer;

@Controller
public class VolunteerController {

	private static final Logger logger = LoggerFactory.getLogger(VolunteerController.class);
	
	@Autowired VolunteerService volunteerService;
	
	@RequestMapping(value = "/center/volunteer/list", method = RequestMethod.GET)
	public void list(PagingVolunteer paging, Model model) {
		
		paging = volunteerService.getPaging(paging);
		
		model.addAttribute("paging", paging);
		
		List list = volunteerService.getVolunteerList(paging);
		
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value = "/center/volunteer/view", method = RequestMethod.GET)
	public void view(Volunteer vol, Model model) {
		
		vol = volunteerService.getVolunteer(vol);
		
		model.addAttribute("vol", vol);
	}
	
	@RequestMapping(value = "/center/area", method = RequestMethod.GET)
	public ModelAndView getArea(Area area, ModelAndView mav) {
		
		area = volunteerService.getArea(area);
		
		mav.addObject("area", area);
		
		mav.setViewName("jsonView");
		
		return mav;
	}
	
	@RequestMapping(value = "/center/volunteer/write", method = RequestMethod.GET)
	public void writeForm(Area area) { }
	
	@RequestMapping(value = "/center/volunteer/write", method = RequestMethod.POST)
	public String write(Volunteer vol, HttpSession session) { 
		
		vol.setCenterno((int) session.getAttribute("centerno"));
		
		volunteerService.write(vol);
		
		return "redirect:/center/volunteer/list";
	}
	
	@RequestMapping(value = "/center/volunteer/update", method = RequestMethod.GET)
	public void updateForm(Volunteer vol, Model model) {
		
		vol = volunteerService.getVolunteer(vol);
		
		model.addAttribute("vol", vol);
	}
	
	@RequestMapping(value = "/center/volunteer/update", method = RequestMethod.POST)
	public String update(Volunteer vol, HttpSession session) { 
		
		volunteerService.update(vol);
		
		return "redirect:/center/volunteer/view?volunteerno="+vol.getVolunteerno();
	}
	
	@RequestMapping(value = "/center/volunteer/delete", method = RequestMethod.GET)
	public String delete(Volunteer vol) {
		
		volunteerService.delete(vol);
		
		return "redirect:/center/volunteer/list";
	}
	
	@RequestMapping(value = "/center/volunteer/test", method = RequestMethod.GET)
	public void test() { }
	
	
}
