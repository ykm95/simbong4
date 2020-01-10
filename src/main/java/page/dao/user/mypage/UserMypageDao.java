package page.dao.user.mypage;

import page.dto.User;

public interface UserMypageDao {

	public int selectCnt(User user);

	public User selectInformationByUemail(User user);

	public void update(User user);

	public void delete(User user);

	public int selectUloginByUemail(User user);

	public void googleUpdate(User user);

}
