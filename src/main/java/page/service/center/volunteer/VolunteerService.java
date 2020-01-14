package page.service.center.volunteer;

import java.util.List;

import page.dto.Area;
import page.dto.Volunteer;
import page.util.Paging;
import page.util.PagingVolunteer;

public interface VolunteerService {
	
	public PagingVolunteer getPaging(PagingVolunteer paging);

	public List getVolunteerList(PagingVolunteer paging);

	public Volunteer getVolunteer(Volunteer vol);

	public void write(Volunteer vol);

	public void update(Volunteer vol);

	public void delete(Volunteer vol);

	public Area getArea(Area area);

	public void approval(int volunteerno, int applicantno);

	public void cancle(int volunteerno, int applicantno);

}
