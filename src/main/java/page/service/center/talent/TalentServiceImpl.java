package page.service.center.talent;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import page.dao.center.talent.TalentDao;
import page.dto.Talent;
import page.util.Paging;

@Service
public class TalentServiceImpl implements TalentService {
	
	@Autowired TalentDao talentDao;

	@Override
	public Paging getPaging(Paging paging) {

		int curPage = paging.getCurPage();
		
		int totalPage = talentDao.selectCntAll();
		
		Paging pagingList = new Paging(totalPage, curPage);
		
		return pagingList;
	}

	@Override
	public List getTalentList(Paging paging) {
		
		return talentDao.selectAllTalent(paging);
	}

	@Override
	public Talent getTalent(Talent talent) {

		return talentDao.selectTalentByTalentno(talent);
	}

}
