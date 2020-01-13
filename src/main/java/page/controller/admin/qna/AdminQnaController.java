package page.controller.admin.qna;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import page.service.admin.qna.QnaService;

@Controller
public class AdminQnaController {
	
	
		@Autowired
		QnaService qnaService;
	

		@RequestMapping(value = "/admin/adminQna/qnaMain", method = RequestMethod.GET)
		public void qnaMain() {
		}
		
		@RequestMapping(value = "/admin/adminQna/qnaDetail", method = RequestMethod.GET)
		public void qnaDetail() {
		}
		
		@ResponseBody
		@RequestMapping(value = "/admin/adminQna/question", method = RequestMethod.GET)
		public Map<String,Object> question(Long index) {
			return qnaService.getQuestionList(index);
		}
		
		
		
	
	//1:1 문의 답변 작성 
	
	//답변완료 처리표시 (대기중, 답변완료 2가지)
	
	//리스트(게시날짜, 처리상태, 제목, 아이디, 문의글 조회, 1:1 답글달기)
	
	//페이징 (다섯 페이지 넘김, 방향바 있기를 희망)

}
