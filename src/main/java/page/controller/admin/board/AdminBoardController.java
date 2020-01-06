package page.controller.admin.board;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import page.dto.Notice;
import page.service.admin.board.BoardService;

@Controller
public class AdminBoardController {

	private static final Logger logger = LoggerFactory.getLogger(AdminBoardController.class);
	
	@Autowired BoardService boardService;

	// 공지사항 게시판
	@RequestMapping(value = "/admin/adminBoard/adminNotice", method = RequestMethod.GET)
	public void adminNotice() {

	}

	// 글쓰기페이지
	@RequestMapping(value = "/admin/adminBoard/adminWrite", method = RequestMethod.GET)
	public void adminWritePg() {

	}

	// 글쓰기
	@ResponseBody
	@RequestMapping(value = "/admin/adminBoard/adminWrite", method = RequestMethod.POST)
	public Map<String,Object> adminWrite(Notice notice, HttpSession session) {
		return boardService.adminWrite(notice,session);
	}

	// 봉사관련(개인,센터) 게시물 관리(a)

	// 공지사항 관리(b)

	// 우수봉사자 게시물 관리(c)

	// 게시글 삭제(a,b,c)

	// 게시글 수정(a,b,c)

	// 게시글 작성(b,c)

}
