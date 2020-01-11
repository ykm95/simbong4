package page.service.admin.qna;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import page.dao.admin.qna.QnaDao;
import page.dto.CenterQuestion;

@Service
public class QnaServicImpl implements QnaService {
	
	@Autowired
	QnaDao qnaDao;

	@Override
	public Map<String, Object> getQuestionList() {
		Map<String,Object> returnData  = new HashMap<>();
		
		//qna리스트가져오기
		List<CenterQuestion> questionList = qnaDao.getQuestionList();
		returnData.put("questionList", questionList);
		
		returnData.put("status", 1);
		return returnData;
	}
	
	

}
