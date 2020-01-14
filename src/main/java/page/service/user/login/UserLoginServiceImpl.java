
package page.service.user.login;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import page.dao.user.login.UserLoginDao;
import page.dto.User;

@Service
public class UserLoginServiceImpl implements UserLoginService {

	private static final Logger logger= LoggerFactory.getLogger(UserLoginServiceImpl.class);
	
	@Autowired UserLoginDao userLoginDao;
	
	@Override
	public void userjoin(User user) {
		userLoginDao.userInsert(user);		
	}

	@Override
	public boolean userlogin(User user) {
		if(userLoginDao.userSelectCnt(user)>=1) {
			return true;
		}
		return false;
	}
	
	@Override
	public int userIdCheck(String uemail) {
		return userLoginDao.checkOverId(uemail);
	}

	@Override
	public void pass_change(Map<String, Object> map) {
		
		logger.info(map.get("user_pass").toString());
		logger.info(map.get("uemail").toString());
		
		userLoginDao.pass_change(map);
		
	}

	@Override
	public String findId(User user) {
		
		return userLoginDao.find_id(user);
	}

	@Override
	public int getunoByemail(User user) {
		return userLoginDao.find_uno(user);
	}

}
