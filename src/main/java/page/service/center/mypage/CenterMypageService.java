package page.service.center.mypage;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import page.dto.Center;
import page.dto.CenterQuestion;

public interface CenterMypageService {

	public boolean login(Center center);

	public Center getInformation(Center center);

	public boolean checkPw(Center center);

	public void centerInformationUpdate(Center center);

	public void centerInformationDelete(Center center);

	public int getCenterno(Center center);

	public int getQuestionno();
	
	public List<CenterQuestion> getList();
	
	public void writeQST(CenterQuestion centerquestion, MultipartFile file);

	public CenterQuestion viewQST(int questionno);

	public void deleteQST(CenterQuestion centerquestion);

}
