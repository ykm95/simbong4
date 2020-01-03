package page.dao.center.mypage;

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

//	/**
//	 * 센터 1:1 문의삭제
//	 * 
//	 * 
//	 */
//	public void delete(Question question);
//	
//	/**
//	 * 센터 1:1 문의보기
//	 * 
//	 * 
//	 */
//	public List<Question> view(Question question);


}
