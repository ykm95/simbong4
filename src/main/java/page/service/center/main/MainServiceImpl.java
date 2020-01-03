package page.service.center.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import page.dao.center.main.MainDao;
import page.dto.Center;

@Service
public class MainServiceImpl implements MainService {
	
	@Autowired MainDao mainDao;

	@Override
	public Center getCenter(Center center) {
		
		return mainDao.selectCenterByCenterno(center);
	}
}
