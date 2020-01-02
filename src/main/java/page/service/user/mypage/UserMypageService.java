package page.service.user.mypage;

import page.dto.Center;
import page.dto.User;

public interface UserMypageService {

	public boolean checkPw(User user);

	public User getInformation(User user);

	public void userInformationUpdate(User user);

}
