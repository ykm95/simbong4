package page.dao.user.mypage;

import java.util.List;

import page.dto.User;
import page.dto.Question;

public interface UserMypageDao {

	public int selectCnt(User user);

	public User selectInformationByUemail(User user);

	public void update(User user);

	public void delete(User user);

	public int selectUloginByUemail(User user);

	public void googleUpdate(User user);

	public List<Question> selectAll();

	public int selectQuestionnoByDual();

	public int selectUsernoByUemail(User user);

	public void insertQuestion(Question question);

	public Question selectQuestionByQuestionno(int questionno);

	public void deleteQuestion(Question question);

}
