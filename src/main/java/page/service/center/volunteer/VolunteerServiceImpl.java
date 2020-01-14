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
		pagingList.setVol_area(paging.getVol_area());
		pagingList.setDepartment(paging.getDepartment());
		pagingList.setVol_sterm(paging.getVol_sterm());
		pagingList.setVol_eterm(paging.getVol_eterm());
		pagingList.setStime(paging.getStime());
		pagingList.setEtime(paging.getEtime());
		pagingList.setVol_process(paging.getVol_process());
		pagingList.setVol_title(paging.getVol_title());
		
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

	@Override
	public void approval(int volunteerno, int applicantno) {
		
		volunteerDao.numProcess(volunteerno);
		volunteerDao.process(applicantno);
	}

	@Override
	public void cancle(int volunteerno, int applicantno) {
		
		volunteerDao.numCancle(volunteerno);
		volunteerDao.cancle(applicantno);
	}

}
