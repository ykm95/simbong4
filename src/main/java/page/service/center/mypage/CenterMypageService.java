package page.service.center.mypage;

import page.dto.Center;

public interface CenterMypageService {

	public boolean login(Center center);

	public Center getInformation(Center center);

	public boolean checkPw(Center center);

	public void centerInformationUpdate(Center center);

	public void centerInformationDelete(Center center);

//	/**
//	 * 센터 1:1 문의글 작성
//	 * 
//	 * @param question
//	 */
//	public void writeQST(Question question);
//
//	/**
//	 * 센터 1:1 문의글 삭제
//	 * 
//	 * @param question
//	 */
//	public void deleteQST(Question question);
//
//	/**
//	 * 센터 1:1 문의글 보기
//	 * 
//	 * @param question
//	 */
//	public List<Question> viewQST(Question question);

}
