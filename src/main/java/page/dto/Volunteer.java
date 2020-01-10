package page.dto;

import java.util.Date;

public class Volunteer {

	private int volunteerno;
	private int centerno;
	private String cname;
	private String mgr;
	private String memail;
	private int mphone;
	private int vol_process;
	private String vol_title;
	private String vol_content;
	private String vol_sterm;
	private String vol_eterm;
	private String stime;
	private String etime;
	private int department;
	private String vol_area;
	private String aname;
	private String vol_place;
	private String receiver;
	private String qualification;
	private Date write_date;
	private int npeople;
	private int apeople;
	private float vol_lat;
	private float vol_lng;
	private String vol_address;
	private String departname;
	
	public String getDepartname() {
		return departname;
	}


	public void setDepartname(String departname) {
		this.departname = departname;
	}


	@Override
	public String toString() {
		return "Volunteer [volunteerno=" + volunteerno + ", centerno=" + centerno + ", cname=" + cname + ", mgr=" + mgr
				+ ", memail=" + memail + ", mphone=" + mphone + ", vol_process=" + vol_process + ", vol_title="
				+ vol_title + ", vol_content=" + vol_content + ", vol_sterm=" + vol_sterm + ", vol_eterm=" + vol_eterm
				+ ", stime=" + stime + ", etime=" + etime + ", department=" + department + ", vol_area=" + vol_area
				+ ", aname=" + aname + ", vol_place=" + vol_place + ", receiver=" + receiver + ", qualification="
				+ qualification + ", write_date=" + write_date + ", npeople=" + npeople + ", apeople=" + apeople
				+ ", vol_lat=" + vol_lat + ", vol_lng=" + vol_lng + ", vol_address=" + vol_address + ", departname="
				+ departname + "]";
	}
	
	
	public int getVolunteerno() {
		return volunteerno;
	}
	public void setVolunteerno(int volunteerno) {
		this.volunteerno = volunteerno;
	}
	public int getCenterno() {
		return centerno;
	}
	public void setCenterno(int centerno) {
		this.centerno = centerno;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getMgr() {
		return mgr;
	}
	public void setMgr(String mgr) {
		this.mgr = mgr;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public int getMphone() {
		return mphone;
	}
	public void setMphone(int mphone) {
		this.mphone = mphone;
	}
	public int getVol_process() {
		return vol_process;
	}
	public void setVol_process(int vol_process) {
		this.vol_process = vol_process;
	}
	public String getVol_title() {
		return vol_title;
	}
	public void setVol_title(String vol_title) {
		this.vol_title = vol_title;
	}
	public String getVol_content() {
		return vol_content;
	}
	public void setVol_content(String vol_content) {
		this.vol_content = vol_content;
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
	public int getDepartment() {
		return department;
	}
	public void setDepartment(int department) {
		this.department = department;
	}
	public String getVol_area() {
		return vol_area;
	}
	public void setVol_area(String vol_area) {
		this.vol_area = vol_area;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getVol_place() {
		return vol_place;
	}
	public void setVol_place(String vol_place) {
		this.vol_place = vol_place;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	public int getNpeople() {
		return npeople;
	}
	public void setNpeople(int npeople) {
		this.npeople = npeople;
	}
	public int getApeople() {
		return apeople;
	}
	public void setApeople(int apeople) {
		this.apeople = apeople;
	}
	public float getVol_lat() {
		return vol_lat;
	}
	public void setVol_lat(float vol_lat) {
		this.vol_lat = vol_lat;
	}
	public float getVol_lng() {
		return vol_lng;
	}
	public void setVol_lng(float vol_lng) {
		this.vol_lng = vol_lng;
	}
	public String getVol_address() {
		return vol_address;
	}
	public void setVol_address(String vol_address) {
		this.vol_address = vol_address;
	}
	
}
