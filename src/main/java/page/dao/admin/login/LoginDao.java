package page.dao.admin.login;

public interface LoginDao {

	String getHashedPassword(String adminId);
	
}
