package page.controller.center.record;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import page.dto.Applicant;
import page.dto.Volunteer;
import page.service.center.record.RecordService;
import page.service.center.volunteer.VolunteerService;
import page.service.user.uservolunteer.UserVolunteerService;
import page.util.Paging;

@Controller
public class CenterRecordController {
	
	private static final Logger logger = LoggerFactory.getLogger(CenterRecordController.class);

	@Autowired RecordService recordService;
	@Autowired VolunteerService volunteerService;
	
	@RequestMapping(value="/center/record/list", method =  RequestMethod.GET)
	public void list(Paging paging, Model model, HttpSession session) {
		
		int centerno = (int) session.getAttribute("centerno");
		
		paging = recordService.getPaging(paging, centerno);
		
		model.addAttribute("paging", paging);
		
		paging.setCenterno(centerno);
		
		List list = recordService.getRecordList(paging);
		
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value = "/center/record/view", method = RequestMethod.GET)
	public void view(Volunteer vol, Model model) {
		
		vol = volunteerService.getVolunteer(vol);
		
		List<Applicant> applicantlist = recordService.getAplByNo(vol.getVolunteerno());
		
		model.addAttribute("list", applicantlist);
		model.addAttribute("vol", vol);
	}
	
	@RequestMapping(value = "/center/record")
	public String record(int volunteerno, int applicantno) {
		
		recordService.record(volunteerno, applicantno);
		
		return "redirect:/center/record/view?volunteerno="+volunteerno;
	}
	
}
