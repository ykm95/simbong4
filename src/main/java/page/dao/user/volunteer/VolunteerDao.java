package page.dao.user.volunteer;

import java.util.List;

import page.dto.Participant;
import page.dto.Volunteer;
import page.util.PagingVolunteer;

public interface VolunteerDao {
	
	public List<Volunteer> selectVolunteerAll(PagingVolunteer pagingVolunteer);

	public Volunteer selectVolunteerByNo(int volunteerno);

	public int selectCntVolunteer(PagingVolunteer pagingVolunteer);
	
	public List<Participant> selectPrtByNo(int volunteerno);

}
