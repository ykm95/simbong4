package page.dao.user.mypage;

import java.util.List;

import page.dto.User;
import page.dto.Volunteer;
import page.dto.Volrecord;
import page.util.Paging;
import page.dto.Applicant;
import page.dto.Question;

public interface UserMypageDao {

	public int selectCnt(User user);

	public User selectInformationByUemail(User user);

	public void update(User user);

	public void delete(User user);

	public int selectUloginByUemail(User user);

	public void googleUpdate(User user);
	
	public Volunteer pdfView(int applicantno);

	public List<Question> selectAll(Paging paging);

	public int selectQuestionnoByDual();


	public void insertQuestion(Question question);

	public Question selectQuestionByQuestionno(int questionno);

	public void deleteQuestion(Question question);

	public int selectCntAll();

	public List<Applicant> selectApplicant(Paging paging);

	public int selectCntAppAll(int userno);
	
	public User selectUserByuserno(int userno);

}
