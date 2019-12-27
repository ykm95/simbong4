package page.dao.center.volunteer;

import java.util.List;

import page.dto.Volunteer;
import page.util.Paging;

public interface VolunteerDao {
	
	public int selectCntAll();

	public List selectAllVolunteer(Paging paging);

	public Volunteer selectVolunteerByVolunteerno(Volunteer vol);

	public void insertVolunteer(Volunteer vol);

	public void updateVolunteer(Volunteer vol);

	public void deleteVolunteer(Volunteer vol);

}
