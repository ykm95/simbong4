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
		
		if(obj==null) {//admin이 아니면
			returnData.put("status", "0");
			returnData.put("message", "access denied");
		}else {//admin이면
			boardDao.adminWrite(notice);//DB저장
			returnData.put("status", "1");
		}
		
		return returnData;
	}

}
