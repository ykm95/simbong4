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

import page.service.center.record.RecordService;
import page.util.Paging;

@Controller
public class CenterRecordController {
	
	private static final Logger logger = LoggerFactory.getLogger(CenterRecordController.class);

	@Autowired RecordService recordService;
	
	@RequestMapping(value="/center/record/list", method =  RequestMethod.GET)
	public void list(Paging paging, Model model, HttpSession session) {
		
		int centerno = (int) session.getAttribute("centerno");
		
		paging = recordService.getPaging(paging, centerno);
		
		model.addAttribute("paging", paging);
		
		List list = recordService.getRecordList(paging);
		
		model.addAttribute("list", list);
	}
}
