package page.service.user.login;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Service;

import page.dao.user.login.UserLoginDao;
import page.dto.User;

@Service
public class GoogleServiceImpl implements GoogleService {

	@Autowired private UserLoginDao userDao;

	@Override
	public int getSocialAccountCnt(User user) {
		
	
		return userDao.selectSocialCnt(user);
	}

	@Override
	public void insertGoogleInfo(User user) {
//		userDao.insertGoogleLoginInfo(user);
		
	}

	@Override
	public void setGoogleLogin(String code, HttpSession session, OAuth2Parameters googleOAuth2Parameters)
			throws IOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void usergooglejoin(User user) {
		userDao.userGoogleInsert(user);		
	}







	
}
