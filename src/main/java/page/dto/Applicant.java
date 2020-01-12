package page.dto;

import java.util.Date;

public class Applicant {
	private int applicantno;
	private int userno;
	private int volunteerno;
	private Date write_date;
	private String uname;
	private String uemail;
	private String uphone;
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
	}
	@Override
	public String toString() {
		return "Applicant [applicantno=" + applicantno + ", userno=" + userno + ", volunteerno=" + volunteerno
				+ ", write_date=" + write_date + ", uname=" + uname + ", uemail=" + uemail + ", uphone=" + uphone + "]";
	}
	public int getApplicantno() {
		return applicantno;
	}
	public void setApplicantno(int applicantno) {
		this.applicantno = applicantno;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public int getVolunteerno() {
		return volunteerno;
	}
	public void setVolunteerno(int volunteerno) {
		this.volunteerno = volunteerno;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

	
	
	

}
