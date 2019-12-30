package page.service.user.best;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import page.dao.user.best.BestVolunteerDao;
import page.dto.BestVolunteer;
import page.util.Paging;



@Service
public class BestVolunteerServiceImpl implements BestVolunteerService{

	@Autowired BestVolunteerDao bestVolunteerDao;



	@Override
	public List<BestVolunteer> getBestList(Paging paging) {
		return bestVolunteerDao.selectBestAll(paging);
	}

	@Override
	public List<BestVolunteer> getSearchList(Paging paging) {
		return bestVolunteerDao.selectSearchAll(paging);
	}
	@Override
	public Paging getPaging(Paging paging) {
		int curPage = paging.getCurPage();
		int totalPage = bestVolunteerDao.selectCntAll();
		Paging paging2 = new Paging(totalPage, curPage);
		paging2.setKeyword(paging.getKeyword());
		paging2.setSearchcategory(paging.getSearchcategory());
		return paging2;
	}
	@Override
	public BestVolunteer bestView(int bestno) {
		return bestVolunteerDao.selectBestVolunteerBybestno(bestno);
	}



}
