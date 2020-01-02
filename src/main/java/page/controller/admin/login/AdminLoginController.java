package page.controller.admin.login;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class AdminLoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminLoginController.class);
	
	//메인페이지(비로그인 상태)
		//DAO생략-@Autowired생략

		@RequestMapping(value="/admin/adminLogin/login", method=RequestMethod.GET)
		public void loginmain() {
			
		}
	//로그인(비로그인 → 로그인  / 로그인시 회원관리, 문의글관리, 게시물관리 세가지 버튼중 하나를 누르면 페이지로 이동)
	
	//로그아웃버튼과 동시에 메인페이지 리디렉션(로그인 →비로그인, 로그아웃되었습니다 모달창은 여유되면 만들기)

}
