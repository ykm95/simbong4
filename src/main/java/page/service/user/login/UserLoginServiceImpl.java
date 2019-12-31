
package page.service.user.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import page.dao.user.login.UserLoginDao;
import page.dto.User;

@Service
public class UserLoginServiceImpl implements UserLoginService {

	
	
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

}
