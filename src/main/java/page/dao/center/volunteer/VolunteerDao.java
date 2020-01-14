package page.dao.center.volunteer;

import java.util.List;

import page.dto.Area;
import page.dto.Volunteer;
import page.util.PagingVolunteer;

public interface VolunteerDao {
	
	public int selectCntAll();

	public List selectAllVolunteer(PagingVolunteer paging);

	public Volunteer selectVolunteerByVolunteerno(Volunteer vol);

	public void insertVolunteer(Volunteer vol);

	public void updateVolunteer(Volunteer vol);

	public void deleteVolunteer(Volunteer vol);

	public Area selectAreaByAreano(Area area);

	public void process(int applicantno);

	public void cancle(int applicantno);

	public void numProcess(int volunteerno);

	public void numCancle(int applicantno);

}
