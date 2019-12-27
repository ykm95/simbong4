package page.dao.center.mypage;

import page.dto.Center;

public interface CenterMypageDao {

	public int selectCnt(Center center);

	public Center selectInformationByBusinessno(Center center);
	
	/**
	 *  센터회원정보수정
	 *
	 */
	public void update(Center center);

//	/**
//	 * 센터회원탈퇴
//	 * 
//	 * 
//	 */
//	public void delete(Center center);
//
//	/**
//	 * 센터 1:1문의작성
//	 * 
//	 */
//	public void write(Question question);
//
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
