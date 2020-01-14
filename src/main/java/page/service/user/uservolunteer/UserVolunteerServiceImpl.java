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
		pagingRes.setVol_area(paging.getVol_area());
		pagingRes.setDepartment(paging.getDepartment());
		pagingRes.setVol_sterm(paging.getVol_sterm());
		pagingRes.setVol_eterm(paging.getVol_eterm());
		pagingRes.setStime(paging.getStime());
		pagingRes.setEtime(paging.getEtime());
		pagingRes.setVol_process(paging.getVol_process());
		pagingRes.setVol_title(paging.getVol_title());
		
		
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

	@Override
	public List<Applicant> getAplByNo(int volunteerno) {
		
		return userVolunteerDao.selectAplByNo(volunteerno);
	}

	@Override
	public int getUserno(String attribute) {
		return userVolunteerDao.selectUserNo(attribute);
	}

	@Override
	public boolean isApplicant(Applicant applicant, int volunteerno) {

		int cnt = userVolunteerDao.selectCntApl(applicant);
		
		  if(cnt == 1) {
			  userVolunteerDao.deleteApl(applicant);
			  userVolunteerDao.subApeople(volunteerno);
			  return true;
		  }
		  else {
			  userVolunteerDao.insertApl(applicant);
			  userVolunteerDao.plusApeople(volunteerno);
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

	@Override
	public int cntApl(int volunteerno) {
		return userVolunteerDao.selectAplno(volunteerno);
	}

	@Override
	public int cntNpeople(int volunteerno) {
		return userVolunteerDao.selectNpeople(volunteerno);
	}




}