package page.service.admin.login;

import java.util.Map;

import javax.servlet.http.HttpSession;

import page.dto.Admin;

public interface LoginService {

	Map<String, Object> loginProcess(Admin admin, HttpSession session);

	void logout(HttpSession session);

}
