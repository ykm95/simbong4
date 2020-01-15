package page.dao.center.mypage;

import java.util.List;

import page.dto.Center;
import page.dto.CenterQuestion;
import page.util.Paging;

public interface CenterMypageDao {

	public int selectCnt(Center center);

	public Center selectInformationByBusinessno(Center center);
	
	public void update(Center center);

	public void delete(Center center);

	public int selectCenternoByBusinessno(Center center);

	public void insertQuestion(CenterQuestion centerquestion);

	public int selectQuestionnoByDual();

	public List<CenterQuestion> selectAll(Paging paging);

	public CenterQuestion selectQuestionByQuestionno(int questionno);

	public void deleteQuestion(CenterQuestion centerquestion);

	public int selectCntAll();
	
	public Center selectCenterByCenterno(int centerno);


}
