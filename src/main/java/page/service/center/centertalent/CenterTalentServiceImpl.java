package page.service.center.centertalent;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import page.dao.center.centertalent.CenterTalentDao;
import page.dto.Talent;
import page.util.Paging;

@Service
public class CenterTalentServiceImpl implements CenterTalentService {
	
	@Autowired CenterTalentDao centerTalentDao;

	@Override
	public Paging getPaging(Paging paging) {

		int curPage = paging.getCurPage();
		
		int totalPage = centerTalentDao.selectCntAll();
		
		Paging pagingList = new Paging(totalPage, curPage);
		
		return pagingList;
	}

	@Override
	public List getTalentList(Paging paging) {
		
		return centerTalentDao.selectAllTalent(paging);
	}

	@Override
	public Talent getTalent(Talent talent) {

		return centerTalentDao.selectTalentByTalentno(talent);
	}

}
