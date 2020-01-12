package page.service.user.uservolunteer;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import page.dao.user.uservolunteer.UserVolunteerDao;
import page.dto.Applicant;
import page.dto.Volunteer;
import page.util.PagingVolunteer;

@Service
public class UserVolunteerServiceImpl implements UserVolunteerService{

	@Autowired private UserVolunteerDao userVolunteerDao;

	@Override
	public PagingVolunteer getPaging(PagingVolunteer paging) {
		//요청파라미터  curPage를 파싱한다
		int curPage = paging.getCurPage();
		
		//Board TB와 curPage 값을 이용한 Paging 객체를 생성하고 반환
		int totalCount = userVolunteerDao.selectCntVolunteer(paging);
		
		//Paging 객체 생성
		PagingVolunteer pagingRes = new PagingVolunteer(totalCount, curPage);
		
		pagingRes.setSearch(paging.getSearch());
		pagingRes.setV_area(paging.getV_area());
		pagingRes.setDepartment(paging.getDepartment());
		pagingRes.setV_sterm(paging.getV_sterm());
		pagingRes.setV_eterm(paging.getV_eterm());
		pagingRes.setV_stime(paging.getV_stime());
		pagingRes.setV_etime(paging.getV_etime());
		pagingRes.setV_process(paging.getV_process());
		pagingRes.setV_title(paging.getV_title());
		
		
		return pagingRes;
	}
	
	@Override
	public List<PagingVolunteer> getVolunteerList(PagingVolunteer pagingVolunteer) {
		
		return userVolunteerDao.selectVolunteerAll(pagingVolunteer);
	}

	@Override
	public Volunteer getVolunteer(int volunteerno) {
		
		return userVolunteerDao.selectVolunteerByNo(volunteerno);
	}

	@Override
	public int getCntVolunteerAll(PagingVolunteer pagingVolunteer) {
		
		return userVolunteerDao.selectCntVolunteer(pagingVolunteer);
	}

//	@Override
//	public List<Applicant> getAplByNo(int volunteerno) {
//		
//		return userVolunteerDao.selectAplByNo(volunteerno);
//	}

	@Override
	public int getUserno(String attribute) {
		return userVolunteerDao.selectUserNo(attribute);
	}

	@Override
	public boolean isApplicant(Applicant applicant) {

		int cnt = userVolunteerDao.selectCntApl(applicant);
		
		  if(cnt == 1) {
			  userVolunteerDao.deleteApl(applicant);
			  return true;
		  }
		  else {
			  userVolunteerDao.insertApl(applicant);
			  return false;
		  }
	}

	@Override
	public boolean isApplicant2(Applicant applicant) {

		int cnt = userVolunteerDao.selectCntApl(applicant);
		
		  if(cnt == 1) {
			  return true;
		  }
		  else {
			  return false;
		  }
	}


}