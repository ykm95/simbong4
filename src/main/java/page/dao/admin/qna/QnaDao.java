package page.dao.admin.qna;

import java.util.List;

import page.dto.CenterQuestion;

public interface QnaDao {

	List<CenterQuestion> getQuestionList();

}