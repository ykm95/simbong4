package page.service.center.mypage;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import page.dto.Center;
import page.dto.CenterQuestion;
import page.util.Paging;

public interface CenterMypageService {

	public boolean login(Center center);

	public Center getInformation(Center center);

	public boolean checkPw(Center center);

	public void centerInformationUpdate(Center center);

	public void centerInformationDelete(Center center);

	public int getCenterno(Center center);

	public int getQuestionno();
	
	public List<CenterQuestion> getList(Paging paging);
	
	public void writeQST(CenterQuestion centerquestion, MultipartFile file);

	public CenterQuestion viewQST(int questionno);

	public void deleteQST(CenterQuestion centerquestion);

	public Paging getPaging(Paging paging);
	/**
	 * 센터마이페이지 메인
	 * @param centerno
	 * @return
	 */
	public Center centerView(int centerno);

}
