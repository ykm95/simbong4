package page.controller.center.main;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import page.dto.Center;
import page.service.center.main.MainService;

@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired MainService mainService;
	
	@RequestMapping(value = "/center/main")
	public void main(Center center, Model model, HttpSession session) { 
		
		if(session.getAttribute("centerno") != null) {
			
			center.setCenterno((int) session.getAttribute("centerno"));
			center = mainService.getCenter(center);
			model.addAttribute("center", center);
		}
		
		
	}
	
}
