package page.service.user.volunteer;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import page.dto.Participant;
import page.dto.Volunteer;
import page.util.PagingVolunteer;

public interface VolunteerService {

	public List<Volunteer> getVolunteerList(PagingVolunteer pagingVolunteer);

	public Volunteer getVolunteer(int volunteerno);

	public int getCntVolunteerAll(PagingVolunteer pagingVolunteer);

	public List<Participant> getPrtByNo(int volunteerno);

	public PagingVolunteer getPaging(PagingVolunteer pagingVolunteer, HttpServletRequest req);



}
