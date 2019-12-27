package web.center_page.volunteer.service.face;

import java.util.List;

import web.center_page.volunteer.dto.Volunteer;
import web.util.Paging;

public interface VolunteerService {
	
	public Paging getPaging(Paging paging);

	public List getVolunteerList(Paging paging);

	public Volunteer getVolunteer(Volunteer vol);

	public void write(Volunteer vol);

	public void update(Volunteer vol);

	public void delete(Volunteer vol);

}
