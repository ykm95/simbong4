package page.service.user.uservolunteer;

import java.util.List;

import page.dto.Applicant;
import page.dto.Volunteer;
import page.util.PagingVolunteer;

public interface UserVolunteerService {

	public List<PagingVolunteer> getVolunteerList(PagingVolunteer pagingVolunteer);

	public Volunteer getVolunteer(int volunteerno);

	public int getCntVolunteerAll(PagingVolunteer pagingVolunteer);

	public List<Applicant> getAplByNo(int volunteerno);

	public PagingVolunteer getPaging(PagingVolunteer pagingVolunteer);

	public int getUserno(String attribute);

	public boolean isApplicant(Applicant applicant);

	public boolean isApplicant2(Applicant applicant);

	public int cntApl(int volunteerno);






}