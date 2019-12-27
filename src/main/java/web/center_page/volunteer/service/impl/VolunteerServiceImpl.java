package web.center_page.volunteer.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.center_page.volunteer.dao.face.VolunteerDao;
import web.center_page.volunteer.dto.Volunteer;
import web.center_page.volunteer.service.face.VolunteerService;
import web.util.Paging;

@Service
public class VolunteerServiceImpl implements VolunteerService {

	@Autowired VolunteerDao volunteerDao;
	
	@Override
	public Paging getPaging(Paging paging) {
		
		int curPage = paging.getCurPage();
		
		int totalCount = volunteerDao.selectCntAll();
		
		Paging pagingList = new Paging(totalCount, curPage);
		
		return pagingList;
	}

	@Override
	public List getVolunteerList(Paging paging) {

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
}
