package page.dao.user.uservolunteer;

import java.util.List;

import page.dto.Applicant;
import page.dto.Volunteer;
import page.util.PagingVolunteer;

public interface UserVolunteerDao {
	
	public List<PagingVolunteer> selectVolunteerAll(PagingVolunteer pagingVolunteer);

	public Volunteer selectVolunteerByNo(int volunteerno);

	public int selectCntVolunteer(PagingVolunteer pagingVolunteer);
	
	public List<Applicant> selectAplByNo(int volunteerno);

	public int selectUserNo(String attribute);

	public int selectCntApl(Applicant applicant);

	public void deleteApl(Applicant applicant);

	public void insertApl(Applicant applicant);

	public int selectAplno(int volunteerno);


}
