package page.dto;

public class Talent {
	
	private int talentno;
	private int userno;
	private String uname;
	private String uemail;
	private String talent_period;
	private int talent_area;
	private String aname;
	private String talent_cycle;
	private String write_date;
	private int department;
	private String talent_title;
	private String talent_content;
	private int talent_process;
	
	
	@Override
	public String toString() {
		return "Talent [talentno=" + talentno + ", userno=" + userno + ", uname=" + uname + ", uemail=" + uemail
				+ ", talent_period=" + talent_period + ", talent_area=" + talent_area + ", aname=" + aname
				+ ", talent_cycle=" + talent_cycle + ", write_date=" + write_date + ", department=" + department
				+ ", talent_title=" + talent_title + ", talent_content=" + talent_content + ", talent_process="
				+ talent_process + "]";
	}
	
	
	public int getTalentno() {
		return talentno;
	}
	public void setTalentno(int talentno) {
		this.talentno = talentno;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
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
	public String getTalent_period() {
		return talent_period;
	}
	public void setTalent_period(String talent_period) {
		this.talent_period = talent_period;
	}
	public int getTalent_area() {
		return talent_area;
	}
	public void setTalent_area(int talent_area) {
		this.talent_area = talent_area;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getTalent_cycle() {
		return talent_cycle;
	}
	public void setTalent_cycle(String talent_cycle) {
		this.talent_cycle = talent_cycle;
	}
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	public int getDepartment() {
		return department;
	}
	public void setDepartment(int department) {
		this.department = department;
	}
	public String getTalent_title() {
		return talent_title;
	}
	public void setTalent_title(String talent_title) {
		this.talent_title = talent_title;
	}
	public String getTalent_content() {
		return talent_content;
	}
	public void setTalent_content(String talent_content) {
		this.talent_content = talent_content;
	}
	public int getTalent_process() {
		return talent_process;
	}
	public void setTalent_process(int talent_process) {
		this.talent_process = talent_process;
	}
	
}
