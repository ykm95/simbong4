package page.dto;

import java.util.Date;

public class Applicant {
	private int applicantno;
	private int userno;
	private int volunteerno;
	private int aprocess;
	private Date write_date;
	private String uname;
	private String uemail;
	private String uphone;
	private int apeople;
	private int npeople;
	public int getApeople() {
		return apeople;
	}

	public void setApeople(int apeople) {
		this.apeople = apeople;
	}

	public int getNpeople() {
		return npeople;
	}

	public void setNpeople(int npeople) {
		this.npeople = npeople;
	}

	@Override
	public String toString() {
		return "Applicant [applicantno=" + applicantno + ", userno=" + userno + ", volunteerno=" + volunteerno
				+ ", aprocess=" + aprocess + ", write_date=" + write_date + ", uname=" + uname + ", uemail=" + uemail
				+ ", uphone=" + uphone + ", apeople=" + apeople + ", npeople=" + npeople + "]";
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

	public int getAprocess() {
		return aprocess;
	}

	public void setAprocess(int aprocess) {
		this.aprocess = aprocess;
	}

	public Date getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

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
	
}
