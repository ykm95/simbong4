package page.dao.center.login;

import java.util.Map;

import page.dto.Center;

public interface CenterLoginDao {


	/**
	 * 회원가입
	 * @param center
	 */
	void centerInsert(Center center);

	/**
	 * 로그인
	 * @param center
	 * @return
	 */
	int centerSelectCnt(Center center);

	
	
	/**
	 * 아이디 중복체크
	 * @param memail- 아이디 
	 * @return- 1 중복 0 중복아님
	 */
	public int checkOverId(String memail);

	/**
	 * 비밀번호 변경
	 * @param map
	 * @param dto
	 */
	void pass_change(Map<String, Object> map);

	/**
	 * 아이디 찾기
	 * @param user-이름,전화번호가 있는 user객체
	 * @return- 이메일
	 */
	String find_id(Center center);

	/**
	 * 로그인시 기관명 가져오기
	 * @param center-로그인한 기관
	 * @return-기관 이름
	 */
	String getNameByEmail(Center center);
	

}
