package page.service.user.login;

import page.dto.User;

public interface UserLoginService {

	/**
	 * 회원가입
	 * @param user-가입할 회원 정보
	 */
	void userjoin(User user);

	
	/**
	 * 로그인
	 * @param user-로그인할 회원 정보
	 * @return-회원이면 true
	 */
	boolean userlogin(User user);
	
	/**
	 * 아이디(이메일) 중복체크
	 * @param uemail-중복 체크할 아이디
	 * @return-1=중복 , 0 은 중복아님
	 */
	public int userIdCheck(String uemail);
}
