package page.service.user.uservolunteer;

import java.util.List;

import page.dto.Participant;
import page.dto.Volunteer;
import page.util.PagingVolunteer;

public interface UserVolunteerService {

	public List<Volunteer> getVolunteerList(PagingVolunteer pagingVolunteer);

	public Volunteer getVolunteer(int volunteerno);

	public int getCntVolunteerAll(PagingVolunteer pagingVolunteer);

	public List<Participant> getPrtByNo(int volunteerno);

	public PagingVolunteer getPaging(PagingVolunteer pagingVolunteer);



}