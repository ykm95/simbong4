package page.dto;

import java.util.Date;

public class Applicant {
	private int applicantno;
	private int userno;
	private int volunteerno;
	private Date write_date;

	private int aprocess;

	private String uname;
	private String uemail;
	private String uphone;

	private String vol_sterm;
	private String vol_eterm;
	private String stime;
	private String etime;
	private String departname;
	private String cname;
	private int vol_process;
	private String vol_title;

	public String getVol_title() {
		return vol_title;
	}

	public void setVol_title(String vol_title) {
		this.vol_title = vol_title;
	}

	public int getVol_process() {
		return vol_process;
	}

	public void setVol_process(int vol_process) {
		this.vol_process = vol_process;
	}

	@Override
	public String toString() {
		return "Applicant [applicantno=" + applicantno + ", userno=" + userno + ", volunteerno=" + volunteerno
				+ ", write_date=" + write_date + ", aprocess=" + aprocess + ", uname=" + uname + ", uemail=" + uemail
				+ ", uphone=" + uphone + ", vol_sterm=" + vol_sterm + ", vol_eterm=" + vol_eterm + ", stime=" + stime
				+ ", etime=" + etime + ", departname=" + departname + ", cname=" + cname + ", vol_process="
				+ vol_process + ", vol_title=" + vol_title + "]";
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

	public int getAprocess() {
		return aprocess;
	}

	public void setAprocess(int aprocess) {
		this.aprocess = aprocess;
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

	public String getVol_sterm() {
		return vol_sterm;
	}

	public void setVol_sterm(String vol_sterm) {
		this.vol_sterm = vol_sterm;
	}

	public String getVol_eterm() {
		return vol_eterm;
	}

	public void setVol_eterm(String vol_eterm) {
		this.vol_eterm = vol_eterm;
	}

	public String getStime() {
		return stime;
	}

	public void setStime(String stime) {
		this.stime = stime;
	}

	public String getEtime() {
		return etime;
	}

	public void setEtime(String etime) {
		this.etime = etime;
	}

	public String getDepartname() {
		return departname;
	}

	public void setDepartname(String departname) {
		this.departname = departname;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

}
