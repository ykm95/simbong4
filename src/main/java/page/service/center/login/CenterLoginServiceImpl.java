
package page.service.center.login;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import page.dao.center.login.CenterLoginDao;
import page.dto.Center;

@Service
public class CenterLoginServiceImpl implements CenterLoginService {

	private static final Logger logger= LoggerFactory.getLogger(CenterLoginServiceImpl.class);
	
	@Autowired CenterLoginDao centerLoginDao;
	
	@Override
	public void centerjoin(Center center) {
		centerLoginDao.centerInsert(center);		
	}

	@Override
	public boolean centerlogin(Center center) {
		if(centerLoginDao.centerSelectCnt(center)>=1) {
			return true;
		}
		return false;
	}
	
	@Override
	public int centerIdCheck(String memail) {
		return centerLoginDao.checkOverId(memail);
	}

	@Override
	public void pass_change(Map<String, Object> map) {
		
		logger.info(map.get("center_pass").toString());
		logger.info(map.get("memail").toString());
		
		centerLoginDao.pass_change(map);
		
	}

	@Override
	public String findId(Center center) {
		
		return centerLoginDao.find_id(center);
	}

	@Override
	public String getnameByemail(Center center) {
		return centerLoginDao.getNameByEmail(center);
	}

	@Override
	public int getcnoByBno(Center center) {
		return centerLoginDao.getCnoByBno(center);
	}

}
