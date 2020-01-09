package page.controller.user.main;



import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import page.dto.Notice;
import page.service.user.notice.NoticeService;

@Controller
public class UserMainController {

	@Autowired NoticeService noticeService;
	private static final Logger logger= LoggerFactory.getLogger(UserMainController.class);

	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void main( Model model) {
		List<Notice> m =noticeService.mainNotice();
		model.addAttribute("main2", m);
		logger.info(m.toString());
	}
}
