package page.service.user.uservolunteer;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import page.dao.user.uservolunteer.UserVolunteerDao;
import page.dto.Participant;
import page.dto.Volunteer;
import page.util.PagingVolunteer;

@Service
public class UserVolunteerServiceImpl implements UserVolunteerService{

	@Autowired private UserVolunteerDao userVolunteerDao;

	@Override
	public PagingVolunteer getPaging(PagingVolunteer pagingVolunteer, HttpServletRequest req) {
		//요청파라미터  curPage를 파싱한다
		int curPage = pagingVolunteer.getCurPage();
		
		//Board TB와 curPage 값을 이용한 Paging 객체를 생성하고 반환
		int totalCount = userVolunteerDao.selectCntVolunteer(pagingVolunteer);
		
		//Paging 객체 생성
		pagingVolunteer = new PagingVolunteer(totalCount, curPage);
		
		if(req.getParameter("search") != null && !"".equals(req.getParameter("search"))) 
		{ 
			pagingVolunteer.setSearch(req.getParameter("search"));
		}

		if(req.getParameter("searchno") != null && !"".equals(req.getParameter("searchno"))) 
		{ 
			pagingVolunteer.setSearchno(Integer.parseInt(req.getParameter("searchno")));
		}

		if(req.getParameter("v_department") != null && !"".equals(req.getParameter("v_department"))) 
		{ 
			pagingVolunteer.setV_department(Integer.parseInt(req.getParameter("v_department")));
		}

		if(req.getParameter("v_area") != null && !"".equals(req.getParameter("v_area"))) 
		{ 
			pagingVolunteer.setV_area(Integer.parseInt(req.getParameter("v_area")));
		}

		if(req.getParameter("v_sterm") != null && !"".equals(req.getParameter("v_sterm"))) 
		{ 
			pagingVolunteer.setV_sterm(req.getParameter("v_sterm"));
		}

		if(req.getParameter("v_eterm") != null && !"".equals(req.getParameter("v_eterm"))) 
		{ 
			pagingVolunteer.setV_eterm(req.getParameter("v_eterm"));
		}

		if(req.getParameter("v_process") != null && !"".equals(req.getParameter("v_process"))) 
		{ 
			pagingVolunteer.setV_process(Integer.parseInt(req.getParameter("v_process")));
		}

		if(req.getParameter("stime") != null && !"".equals(req.getParameter("stime"))) 
		{ 
			pagingVolunteer.setStime(req.getParameter("stime"));
		}
		if(req.getParameter("etime") != null && !"".equals(req.getParameter("etime"))) 
		{ 
			pagingVolunteer.setStime(req.getParameter("etime"));
		}
		
		return pagingVolunteer;
	}
	
	@Override
	public List<Volunteer> getVolunteerList(PagingVolunteer pagingVolunteer) {
		
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
	public List<Participant> getPrtByNo(int volunteerno) {
		
		return userVolunteerDao.selectPrtByNo(volunteerno);
	}


}
