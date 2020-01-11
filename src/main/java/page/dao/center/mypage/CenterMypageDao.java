package page.dao.center.mypage;

import java.util.List;

import page.dto.Center;
import page.dto.CenterQuestion;

public interface CenterMypageDao {

	public int selectCnt(Center center);

	public Center selectInformationByBusinessno(Center center);
	
	public void update(Center center);

	public void delete(Center center);

	public int selectCenternoByBusinessno(Center center);

	public void insertQuestion(CenterQuestion centerquestion);

	public int selectQuestionnoByDual();

	public List<CenterQuestion> selectAll();

	public CenterQuestion selectQuestionByQuestionno(int questionno);

	public void deleteQuestion(CenterQuestion centerquestion);


}
