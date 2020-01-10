package page.controller.admin.user;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminUserController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminUserController.class);

	//test
	@RequestMapping(value="/admin/adminUser/test", method=RequestMethod.GET) 
	public void test() {  

	}
	
	//bootstrap templet
	@RequestMapping(value="/admin/adminUser/userPage", method=RequestMethod.GET) 
	public void userPage() {  

	}
	
	
	//회원정보 목록(카드)
	
	//회원정보 수정
	
	//회원정보 삭제(강제 탈퇴)
	
	//봉사글 승인요청(개인)
	
	//봉사기관승인(센터)
	
	//이메일 발송(smtp)

}
