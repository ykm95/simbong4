package page.service.user.mypage;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import page.dto.Applicant;
import page.dto.Center;
import page.dto.User;
import page.dto.Volrecord;
import page.util.Paging;
import page.dto.Question;

public interface UserMypageService {

	public boolean checkPw(User user);

	public User getInformation(User user);

	public void userInformationUpdate(User user);

	public void userInformationDelete(User user);

	public int getUlogin(User user);

	public void googleInformationUpdate(User user);

	public List<Question> getList(Paging paging);

	public int getQuestionno();


	public void writeQST(Question question, MultipartFile file);

	public Question viewQST(int questionno);

	public void deleteQST(Question question);

	public Paging getPaging(Paging paging);

	public List<Applicant> getApplicant(Paging paging);

	public Paging getAppPaging(Paging paging);

}
