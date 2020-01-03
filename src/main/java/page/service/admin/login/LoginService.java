package page.service.admin.login;

import page.dto.Admin;

public interface LoginService {
	
	/**
	 * 로그인 처리
	 * 
	 * @param login - 로그인 아이디, 패스워드 정보 객체
	 * @return
	 * 		true - 로그인 인증 성공
	 * 		false -로그인 인증 실패
	 */
	public boolean login(Admin admin);

}
