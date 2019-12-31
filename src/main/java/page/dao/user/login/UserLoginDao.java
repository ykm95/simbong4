package page.dao.user.login;

import page.dto.User;

public interface UserLoginDao {


	/**
	 * 회원가입
	 * @param user
	 */
	void userInsert(User user);

	/**
	 * 로그인
	 * @param user
	 * @return
	 */
	int userSelectCnt(User user);


	/**
	 * 소셜로그인 시도한 사용자의 테이블에서의 cnt 수 구하기
	 * @param user
	 * @return
	 */
	public int selectSocialCnt(User user);
	
	/**
	 * 구글로그인으로 가입한 회원 삽입
	 * @param user-삽입할 회원
	 */
	public void userGoogleInsert(User user);
	
	/**
	 * 아이디 중복체크
	 * @param uemail- 아이디 
	 * @return- 1 중복 0 중복아님
	 */
	public int checkOverId(String uemail);

}
