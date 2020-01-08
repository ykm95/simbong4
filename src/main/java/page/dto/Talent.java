package page.dto;

import java.util.Arrays;
import java.util.Date;

public class Talent {

	private int talentno;
	private int userno;
	private int talent_process;
	private int phone;
	private int gender;
	private int talent_type;	
	private int departmentno;
	private String departname;
	private String uname;
	private String uemail;
	private String aname;
	private int areano;
	private String talent_cycle;
	private Date write_date;
	private String talent_title;
	private String talent_content;
	private String talent_start;
	private String talent_end;
	
	private String test;

	@Override
	public String toString() {
		return "Talent [talentno=" + talentno + ", userno=" + userno + ", talent_process=" + talent_process + ", phone="
				+ phone + ", gender=" + gender + ", talent_type=" + talent_type + ", departmentno=" + departmentno
				+ ", departname=" + departname + ", uname=" + uname + ", uemail=" + uemail + ", aname=" + aname
				+ ", areano=" + areano + ", talent_cycle=" + talent_cycle + ", write_date=" + write_date
				+ ", talent_title=" + talent_title + ", talent_content=" + talent_content + ", talent_start="
				+ talent_start + ", talent_end=" + talent_end + ", test=" + test + "]";
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

	public int getTalent_process() {
		return talent_process;
	}

	public void setTalent_process(int talent_process) {
		this.talent_process = talent_process;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public int getTalent_type() {
		return talent_type;
	}

	public void setTalent_type(int talent_type) {
		this.talent_type = talent_type;
	}

	public int getDepartmentno() {
		return departmentno;
	}

	public void setDepartmentno(int departmentno) {
		this.departmentno = departmentno;
	}

	public String getDepartname() {
		return departname;
	}

	public void setDepartname(String departname) {
		this.departname = departname;
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

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public int getAreano() {
		return areano;
	}

	public void setAreano(int areano) {
		this.areano = areano;
	}

	public String getTalent_cycle() {
		return talent_cycle;
	}

	public void setTalent_cycle(String talent_cycle) {
		this.talent_cycle = talent_cycle;
	}

	public Date getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
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

	public String getTalent_start() {
		return talent_start;
	}

	public void setTalent_start(String talent_start) {
		this.talent_start = talent_start;
	}

	public String getTalent_end() {
		return talent_end;
	}

	public void setTalent_end(String talent_end) {
		this.talent_end = talent_end;
	}

	public String getTest() {
		return test;
	}

	public void setTest(String test) {
		this.test = test;
	}
	


}
