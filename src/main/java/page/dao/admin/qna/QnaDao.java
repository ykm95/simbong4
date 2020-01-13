package page.dao.admin.qna;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import page.dto.CenterQuestion;

public interface QnaDao {

	List<CenterQuestion> getQuestionList(@Param("startIndex") long startIndex, @Param("endIndex") long endIndex);

	Long getTotalBoardCount();

}