package page.service.center.volunteer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import page.dao.center.volunteer.VolunteerDao;
import page.dto.Area;
import page.dto.Volunteer;
import page.util.Paging;
import page.util.PagingVolunteer;

@Service
public class VolunteerServiceImpl implements VolunteerService {

	@Autowired VolunteerDao volunteerDao;
	
	@Override
	public PagingVolunteer getPaging(PagingVolunteer paging) {
		
		int curPage = paging.getCurPage();
		
		int totalCount = volunteerDao.selectCntAll();
		
		PagingVolunteer pagingList = new PagingVolunteer(totalCount, curPage);
		
		pagingList.setSearch(paging.getSearch());
		pagingList.setV_area(paging.getV_area());
		pagingList.setDepartment(paging.getDepartment());
		pagingList.setV_sterm(paging.getV_sterm());
		pagingList.setV_eterm(paging.getV_eterm());
		pagingList.setV_stime(paging.getV_stime());
		pagingList.setV_etime(paging.getV_etime());
		pagingList.setV_process(paging.getV_process());
		pagingList.setV_title(paging.getV_title());
		
		return pagingList;
	}

	@Override
	public List getVolunteerList(PagingVolunteer paging) {

		return volunteerDao.selectAllVolunteer(paging);
	}

	@Override
	public Volunteer getVolunteer(Volunteer vol) {

		return volunteerDao.selectVolunteerByVolunteerno(vol);
	}

	@Override
	public void write(Volunteer vol) {

		volunteerDao.insertVolunteer(vol);
	}

	@Override
	public void update(Volunteer vol) {

		volunteerDao.updateVolunteer(vol);
	}

	@Override
	public void delete(Volunteer vol) {

		volunteerDao.deleteVolunteer(vol);
	}

	@Override
	public Area getArea(Area area) {

		return volunteerDao.selectAreaByAreano(area);
	}

}
