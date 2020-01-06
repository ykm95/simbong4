package page.service.admin.login;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import page.dto.Admin;

public interface LoginService {

	Map<String, Object> loginProcess(Admin admin, Model model, HttpSession session);

	void logout(HttpSession session);

}
