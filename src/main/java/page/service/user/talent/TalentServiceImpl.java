
package page.service.user.talent;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import page.dao.user.talent.TalentDao;
import page.dto.Talent;
import page.util.PagingTalent;

@Service
public class TalentServiceImpl implements TalentService{

	@Autowired private TalentDao talentDao;

	@Override
	public PagingTalent getPaging(PagingTalent paging) {
		//요청파라미터  curPage를 파싱한다
		int curPage = paging.getCurPage();
		
		//Board TB와 curPage 값을 이용한 Paging 객체를 생성하고 반환
		int totalCount = talentDao.selectCntTalent(paging);
		
		//Paging 객체 생성
		PagingTalent pagingRes = new PagingTalent(totalCount, curPage);
		pagingRes.setT_process( paging.getT_process() );
		pagingRes.setT_type( paging.getT_type() );
		pagingRes.setT_department( paging.getT_department() );
		pagingRes.setT_area( paging.getT_area() );
		pagingRes.setT_start( paging.getT_start() );
		pagingRes.setT_end( paging.getT_end() );
		pagingRes.setT_cycle( paging.getT_cycle() );

		
		
		
		return pagingRes;
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
	public void write(PagingTalent paging) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("paging", paging);
		
//		map.put("t_area", paging.getT_area());
//		map.put("t_process", paging.getT_process());
//		map.put("t_type", paging.getT_type());
//		map.put("t_department", paging.getT_department());
//		map.put("t_start", paging.getT_start());
//		map.put("t_end", paging.getT_end());
//		map.put("t_cycle", paging.getT_cycle());
		
		
		talentDao.insertTalent(map);
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
