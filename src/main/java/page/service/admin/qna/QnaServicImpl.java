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
	
	private final int UNIT_SIZE = 7;
	private final int BLOCK_SIZE = 5;

	@Override
	public Map<String, Object> getQuestionList(Long index) {
		Map<String,Object> returnData  = new HashMap<>();
		
		long startIndex = ( index - 1 ) * UNIT_SIZE + 1;
		long endIndex = index * UNIT_SIZE;

		
		//qna리스트 가져오기
		List<CenterQuestion> questionList = qnaDao.getQuestionList(startIndex, endIndex);
		//qna리스트 전체 수 가져오기
		Long totalCount = qnaDao.getTotalBoardCount();
		
		returnData.put("questionList", questionList);
		returnData.put("totalCount", totalCount);
		returnData.put("unitSize", UNIT_SIZE);
		returnData.put("blockSize", BLOCK_SIZE);
		returnData.put("status", 1);
		
		return returnData;
	}

}
