package page.service.center.volunteer;

import java.util.List;

import page.dto.Volunteer;
import page.util.Paging;

public interface VolunteerService {
	
	public Paging getPaging(Paging paging);

	public List getVolunteerList(Paging paging);

	public Volunteer getVolunteer(Volunteer vol);

	public void write(Volunteer vol);

	public void update(Volunteer vol);

	public void delete(Volunteer vol);

}
