package page.service.user.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import page.dao.user.mypage.UserMypageDao;
import page.dto.User;

@Service
public class UserMypageServiceImpl implements UserMypageService {

	@Autowired UserMypageDao userMypageDao;
	
	@Override
	public boolean checkPw(User user) {
		if ( userMypageDao.selectCnt(user) > 0 ) {
			return true;
		} 
		
		return false;
	}

	@Override
	public User getInformation(User user) {
		return userMypageDao.selectInformationByUemail(user);
	}

	@Override
	public void userInformationUpdate(User user) {
		userMypageDao.update(user);
	}

	@Override
	public void userInformationDelete(User user) {
		userMypageDao.delete(user);
	}

	@Override
	public int getUlogin(User user) {
		return userMypageDao.selectUloginByUemail(user);
	}

	@Override
	public void googleInformationUpdate(User user) {
		userMypageDao.googleUpdate(user);
	}


}
