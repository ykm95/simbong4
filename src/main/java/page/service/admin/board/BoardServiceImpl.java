package page.service.admin.board;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import page.dao.admin.board.BoardDao;
import page.dto.Notice;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired BoardDao boardDao;
	
	@Override
	public Map<String, Object> adminWrite(Notice notice, HttpSession session) {
		Map<String, Object> returnData = new HashMap<>();
		
		Object obj = session.getAttribute("isAdmin");
		
		//admin이 아니면 0, 빠꾸
		if(obj==null) {
			returnData.put("status", "0");
			returnData.put("message", "access denied");
		//admin이면 1, DB저장
		}else {
			boardDao.adminWrite(notice);//DB저장
			returnData.put("status", "1");
		}
		
		return returnData;
	}

}
