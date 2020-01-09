package page.service.admin.login;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import page.dao.admin.login.LoginDao;
import page.dto.Admin;

@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired LoginDao loginDao;

	@Override
	public Map<String, Object> loginProcess(Admin admin, Model model, HttpSession session) {
		Map<String, Object> returnData = new HashMap<>();
		
		String hashedPassword = loginDao.getHashedPassword(admin.getAdminId());
		
		//아이디존재유무
		if(hashedPassword == null){//존재하지 않는 아이디.
			returnData.put("status", "0");
			returnData.put("message", "존재하지 않는 아이디.");
		}else {// 존재하는 아이디.
			
			if(BCrypt.checkpw(admin.getAdminPw(), hashedPassword)) {//비밀번호 일치
				session.setAttribute("loginId", admin.getAdminId());
				session.setAttribute("isAdmin", true);
				returnData.put("status", "1");
				
			}else {//비밀번호 불일치
				returnData.put("status", "0");
				returnData.put("message", "비밀번호를 확인해주세요.");
			}
		}
		return returnData;
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}
	
}
