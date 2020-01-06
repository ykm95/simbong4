package page.service.admin.board;

import java.util.Map;

import javax.servlet.http.HttpSession;

import page.dto.Notice;

public interface BoardService {

	/**
	 * 글쓰기
	 * @param notice
	 * @param session
	 * @return
	 */
	Map<String, Object> adminWrite(Notice notice, HttpSession session);

}
