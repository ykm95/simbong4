package page.controller.admin.board;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminBoardController {


	private static final Logger logger = LoggerFactory.getLogger(AdminBoardController.class);

	//봉사자신청 페이지
	@RequestMapping(value="/admin/adminBoard/list", method=RequestMethod.GET) 
	public void volunteer() {  

	}
	//봉사관련(개인,센터) 게시물 관리(a)

	//공지사항 관리(b)

	//우수봉사자 게시물 관리(c)

	//게시글 삭제(a,b,c)

	//게시글 수정(a,b,c)

	//게시글 작성(b,c)

}
