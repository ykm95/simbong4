package page.service.user.login;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.codec.binary.Base64;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.ObjectMapper;

import page.dao.user.login.UserLoginDao;
import page.dto.User;

@Service
public class GoogleServiceImpl implements GoogleService {

	@Autowired private UserLoginDao userDao;
	
	private static final Logger logger= LoggerFactory.getLogger(GoogleServiceImpl.class);

	@Override
	public int getSocialAccountCnt(User user) {
		
	
		return userDao.selectSocialCnt(user);
	}

	@Override
	public void insertGoogleInfo(User user) {
		userDao.userGoogleInsert(user);
		
	}

	@Override
	public User setGoogleLogin(String code, HttpSession session, OAuth2Parameters googleOAuth2Parameters)
			throws IOException {
		
		//RestTemplate을 사용하여 Access Token 및 profile을 요청한다.

				RestTemplate restTemplate = new RestTemplate();

				MultiValueMap<String, String> parameters = new LinkedMultiValueMap<String, String>();

				parameters.add("code", code);

				parameters.add("client_id", "661200041177-uu3hcr6ei708qsiaskndvlqfob8n0f3c.apps.googleusercontent.com");

				parameters.add("client_secret", "Sx85L6SqDJhLqIJJwgyOghQg");

				parameters.add("redirect_uri", googleOAuth2Parameters.getRedirectUri());

				parameters.add("grant_type", "authorization_code");



				HttpHeaders headers = new HttpHeaders();

				headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);

				HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<MultiValueMap<String, String>>(parameters, headers);

				ResponseEntity<Map> responseEntity = restTemplate.exchange("https://www.googleapis.com/oauth2/v4/token", HttpMethod.POST, requestEntity, Map.class);

				Map<String, Object> responseMap = responseEntity.getBody();



				// id_token 라는 키에 사용자가 정보가 존재한다.

				// 받아온 결과는 JWT (Json Web Token) 형식으로 받아온다. 콤마 단위로 끊어서 첫 번째는 현 토큰에 대한 메타 정보, 두 번째는 우리가 필요한 내용이 존재한다.

				// 세번째 부분에는 위변조를 방지하기 위한 특정 알고리즘으로 암호화되어 사이닝에 사용한다.

				//Base 64로 인코딩 되어 있으므로 디코딩한다.



				String[] tokens = ((String)responseMap.get("id_token")).split("\\.");

				Base64 base64 = new Base64(true);

				String body = new String(base64.decode(tokens[1]));



				String tokenInfo = new String(Base64.decodeBase64(tokens[1]), "utf-8");
				
//				System.out.println(tokenInfo);

				
				//Jackson을 사용한 JSON을 자바 Map 형식으로 변환
				ObjectMapper temp = new ObjectMapper();
				Map<String, String> map = temp.readValue(tokenInfo, Map.class);
				
//
//				ObjectMapper mapper = new ObjectMapper();
//				Map<String, String> result = mapper.readValue(body, Map.class);

			
				//유저 DTO에 소셜 로그인 정보 저장

				
				User user= new User();
				user.setUemail(map.get("email"));
				user.setUname(map.get("name"));
				
				logger.info(user.toString());

				//소셜 로그인 정보 존재 유무 검사

				int socialCnt = getSocialAccountCnt(user);


				//소셜로그인 정보가 회원정보에 담겨 있지않은 경우 처음 로그인

				if(socialCnt == 0) {

					session.setAttribute("socialDouble", false);

					session.setAttribute("login", true); 		// 로그인 상태 true
					session.setAttribute("loginid",user.getUemail());
					
					return user;
					

				}

				//두번 이상 로그인

				else {

					
					session.setAttribute("socialDouble", true);
					session.setAttribute("login", true); 		// 로그인 상태 true
					session.setAttribute("loginid", user.getUemail());
					
					return null;

				}

				// 파싱 데이터로 세션 저장
//
//				session.setAttribute("login", true); 		// 로그인 상태 true
//				session.setAttribute("login", result.get("name"));			// 이름
		
	}


}
