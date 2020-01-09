package page.service.user.login;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.social.oauth2.OAuth2Parameters;

import page.dto.User;

public interface GoogleService {
	/**

	 * 
	 * 구글 로그인 아이디가 존재하는지 검사한다.
	 * 
	 * @param user - 소셜로그인 정보가 담긴 객체
	 * @return  int - 소셜로그인 정보 갯수
	 *  	
	 */
	public int getSocialAccountCnt(User user);


	/**
	 * 
	 * 구글 로그인 시도시, User테이블에 정보가 없으면 데이터 삽입(회원가입과 유사)
	 * @param user - 소셜로그인 정보가 담긴 객체
	 */
	public void insertGoogleInfo(User user);


	/**
	 * 구글 로그인 성공시, 필요한 데이터들을 설정해준다.
	 * @param code - 구글 로그인 인증코드
	 * @param session - 세션 설정위한 객체
	 * @param googleOAuth2Parameters - 구글 api 사용 위한 Auth2 객체
	 */
	public User setGoogleLogin(String code, HttpSession session, OAuth2Parameters googleOAuth2Parameters) throws IOException;




}
