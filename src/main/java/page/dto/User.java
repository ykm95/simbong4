package page.dto;

import page.encrypt.PwToHash;

public class User {

	private int userno;
	private String uname;
	private String uemail;
	private String upassword;
	private String uaddress1;
	private String uaddress2;
	private String uaddress3;
	private String uphone;
	private int gender;
	
	
	private PwToHash pth=new PwToHash();
	
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
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = pth.toHash(upassword);
	}
	public String getUaddress1() {
		return uaddress1;
	}
	public void setUaddress1(String uaddress1) {
		this.uaddress1 = uaddress1;
	}
	public String getUaddress2() {
		return uaddress2;
	}
	public void setUaddress2(String uaddress2) {
		this.uaddress2 = uaddress2;
	}
	public String getUaddress3() {
		return uaddress3;
	}
	public void setUaddress3(String uaddress3) {
		this.uaddress3 = uaddress3;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "User [userno=" + userno + ", uname=" + uname + ", uemail=" + uemail + ", upassword=" + upassword
				+ ", uaddress1=" + uaddress1 + ", uaddress2=" + uaddress2 + ", uaddress3=" + uaddress3 + ", uphone="
				+ uphone + ", gender=" + gender + "]";
	}

}
