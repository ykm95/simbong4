package page.service.user.mypage;

import page.dto.Center;
import page.dto.User;

public interface UserMypageService {

	public boolean checkPw(User user);

	public User getInformation(User user);

	public void userInformationUpdate(User user);

	public void userInformationDelete(User user);

	public int getUlogin(User user);

	public void googleInformationUpdate(User user);

}
