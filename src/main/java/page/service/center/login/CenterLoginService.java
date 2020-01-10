package page.service.center.login;

import java.util.Map;

import page.dto.Center;

public interface CenterLoginService {

	/**
	 * 회원가입
	 * @param center-가입할 회원 정보
	 */
	void centerjoin(Center center);

	
	/**
	 * 로그인
	 * @param center-로그인할 회원 정보
	 * @return-회원이면 true
	 */
	boolean centerlogin(Center center);
	
	/**
	 * 아이디(이메일) 중복체크
	 * @param memail-중복 체크할 아이디
	 * @return-1=중복 , 0 은 중복아님
	 */
	public int centerIdCheck(String memail);


	/**
	 * 비밀번호 변경
	 * @param map
	 * @param dto
	 */
	void pass_change(Map<String, Object> map);


	/**
	 * 아이디 찾기
	 * @param center-이름,전화번호가 있는 center 객체
	 * @return 이메일
	 */
	String findId(Center center);


	/**
	 * 로그인성공시 이름가져오기
	 * @param center-로그인할 객체
	 * @return-기관이름
	 */
	String getnameByemail(Center center);

	/**
	 * 센터번호 가져오기
	 * @param center-가져올 센터번호의 객체
	 * @return-센터번호
	 */
	int getcnoByBno(Center center);


	/**
	 * 사업자 번호 중복 조회
	 * @param businessno-조회할 사업자 번호
	 * @return-1=중복 , 0 은 중복아님
	 */
	int userBnoCheck(long businessno);
}
