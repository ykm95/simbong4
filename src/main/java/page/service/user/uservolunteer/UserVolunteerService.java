package page.service.user.uservolunteer;

import java.util.List;

import javax.servlet.http.HttpSession;

import page.dto.Applicant;
import page.dto.Volunteer;
import page.util.PagingVolunteer;

public interface UserVolunteerService {

	public List<Volunteer> getVolunteerList(PagingVolunteer pagingVolunteer);

	public Volunteer getVolunteer(int volunteerno);

	public int getCntVolunteerAll(PagingVolunteer pagingVolunteer);

	public List<Applicant> getAplByNo(int volunteerno);

	public PagingVolunteer getPaging(PagingVolunteer pagingVolunteer);

	public int getUserno(String attribute);

	public boolean isApplicant(Applicant applicant);





}