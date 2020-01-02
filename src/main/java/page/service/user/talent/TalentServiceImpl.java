package page.service.user.talent;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import page.dao.user.talent.TalentDao;
import page.dto.Talent;
import page.util.PagingTalent;

@Service
public class TalentServiceImpl implements TalentService{

	@Autowired private TalentDao talentDao;

	@Override
	public PagingTalent getPaging(PagingTalent paging, HttpServletRequest req) {
		//요청파라미터  curPage를 파싱한다
		int curPage = paging.getCurPage();
		
		//Board TB와 curPage 값을 이용한 Paging 객체를 생성하고 반환
		int totalCount = talentDao.selectCntTalent(paging);
		
		//Paging 객체 생성
		paging = new PagingTalent(totalCount, curPage);
		
		if(req.getParameter("t_process") != null && !"".equals(req.getParameter("t_process")) && Integer.parseInt(req.getParameter("t_process")) != 0) 
		{ 
			paging.setT_process(Integer.parseInt(req.getParameter("t_process")));
		}

		if(req.getParameter("t_type") != null && !"".equals(req.getParameter("t_type")) && Integer.parseInt(req.getParameter("t_type")) != 0) 
		{ 
			paging.setT_type(Integer.parseInt(req.getParameter("t_type")));
		}

		if(req.getParameter("t_department") != null && !"".equals(req.getParameter("t_department"))) 
		{ 
			paging.setT_department(Integer.parseInt(req.getParameter("t_department")));
		}

		if(req.getParameter("t_area") != null && !"".equals(req.getParameter("t_area"))) 
		{ 
			paging.setT_area(Integer.parseInt(req.getParameter("t_area")));
		}

		if(req.getParameter("t_start") != null && !"".equals(req.getParameter("t_start"))) 
		{ 
			paging.setT_start(req.getParameter("t_start"));
		}

		if(req.getParameter("t_end") != null && !"".equals(req.getParameter("t_end"))) 
		{ 
			paging.setT_end(req.getParameter("t_end"));
		}

		if(req.getParameter("t_cycle") != null && !"".equals(req.getParameter("t_cycle"))) 
		{ 
			paging.setT_cycle(req.getParameter("t_cycle"));
		}

		if(req.getParameter("t_title") != null && !"".equals(req.getParameter("t_title"))) 
		{ 
			paging.setT_title(req.getParameter("t_title"));
		}


		return paging;
	}

	
	@Override
	public List<Talent> getTalentList(PagingTalent paging) {
		return talentDao.selectTalentAll(paging);
	}

	@Override
	public Talent getTalent(int talentno) {
		return talentDao.selectTalentByNo(talentno);
	}

	@Override
	public void write(Talent talent) {
		talentDao.insertTalent(talent);
	}

	@Override
	public void update(Talent talent) {
		talentDao.updateTalent(talent);
	}

	@Override
	public void delete(int talentno) {
		talentDao.deleteTalent(talentno);
	}

	@Override
	public int getCntTalent(PagingTalent paging) {
		return talentDao.selectCntTalent(paging);
	}


}
