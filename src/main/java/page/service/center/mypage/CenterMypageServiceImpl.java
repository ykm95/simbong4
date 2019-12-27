package page.service.center.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import page.dao.center.mypage.CenterMypageDao;
import page.dto.Center;

@Service
public class CenterMypageServiceImpl implements CenterMypageService {

	@Autowired CenterMypageDao centerMypageDao;
	
	@Override
	public boolean login(Center center) {
		
		if (centerMypageDao.selectCnt(center) >= 1) {
			return true;
		}
		return false;
	}

	@Override
	public Center getInformation(Center center) {
		return centerMypageDao.selectInformationByBusinessno(center);
	}

	@Override
	public boolean checkPw(Center center) {
		if ( centerMypageDao.selectCnt(center) > 0 ) {
			return true;
		} 
		
		return false;
	}

	@Override
	public void centerInformationUpdate(Center center) {
		centerMypageDao.update(center);
		
	}

//	@Override
//	public void centerInformationDelete(Center center) {
//		centerMypageDao.delete(center);
//		
//	}
//
//	@Override
//	public void writeQST(Question question) {
//		centerMypageDao.write(question);
//		
//	}
//
//	@Override
//	public void deleteQST(Question question) {
//		centerMypageDao.delete(question);
//		
//	}
//
//	@Override
//	public List<Question> viewQST(Question question) {
//		centerMypageDao.view(question);
//		return null;
//		
//	}

}
