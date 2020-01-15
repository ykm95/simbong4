package page.controller.center.notice;

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
import page.util.Paging;



@Controller
public class CenterNoticeController {

	@Autowired NoticeService noticeService;
	
	private static final Logger logger =LoggerFactory.getLogger(CenterNoticeController.class); 

	@RequestMapping(value = "/center/notice/list", method = RequestMethod.GET)
	public void noticeList(Model model, Paging paging){
		

		paging= noticeService.getPaging(paging);
		
		
		if( paging.getKeyword() !=null) {
			
			List<Notice> nlist = noticeService.getSearchList(paging);
			paging= noticeService.getPaging(paging);
			
			model.addAttribute("nlist", nlist);
			
			logger.info("검색실행");
		}else {
			List<Notice> nlist = noticeService.getNoticeList(paging);
			logger.info(paging.toString());
			model.addAttribute("nlist", nlist);
			logger.info("검색X");
		}
		
		model.addAttribute("paging", paging);
	}
	
	
	@RequestMapping(value = "/center/notice/view", method = RequestMethod.GET)
	public void noticeView(int noticeno, Model model) {
		
		Notice view = new Notice();
		view = noticeService.noticeView(noticeno);
		
		
		model.addAttribute("view", view);
	}
	@RequestMapping(value = "/center/notice/pdf", method = RequestMethod.GET)
	public void pdf(int noticeno, Model model) {
		Notice view = new Notice();
		view = noticeService.noticeView(noticeno);
		
		
		model.addAttribute("view", view);
	}
}
