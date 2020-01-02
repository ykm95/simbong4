package page.dao.user.mypage;

import page.dto.User;

public interface UserMypageDao {

	public int selectCnt(User user);

	public User selectInformationByUemail(User user);

	public void update(User user);

}
