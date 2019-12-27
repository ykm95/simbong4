package web.center_page.volunteer.dao.face;

import java.util.List;

import web.center_page.volunteer.dto.Volunteer;
import web.util.Paging;

public interface VolunteerDao {
	
	public int selectCntAll();

	public List selectAllVolunteer(Paging paging);

	public Volunteer selectVolunteerByVolunteerno(Volunteer vol);

	public void insertVolunteer(Volunteer vol);

	public void updateVolunteer(Volunteer vol);

	public void deleteVolunteer(Volunteer vol);

}
