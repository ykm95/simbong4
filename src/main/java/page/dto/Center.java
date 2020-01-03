package page.dto;

import java.util.Date;

import page.encrypt.PwToHash;

public class Center { // 센터회원정보

	private int centerno; // 센터번호
	private String cname; // 센터이름
	private int businessno; // 사업자번호
	private String cpassword; // 센터비밀번호
	private String mgr; // 담당자이름
	private String memail; // 담당자이메일
	private String mphone; // 담당자번호
	private Date founded; // 설립일
	private int chk; // 인증여부
	private String address1; // 센터우편번호
	private String address2; // 센터도로명주소
	private String address3; // 센터상세주소
	private PwToHash pth=new PwToHash();

	@Override
	public String toString() {
		return "Center [centerno=" + centerno + ", cname=" + cname + ", businessno=" + businessno + ", cpassword="
				+ cpassword + ", mgr=" + mgr + ", memail=" + memail + ", mphone=" + mphone + ", founded=" + founded
				+ ", chk=" + chk + ", address1=" + address1 + ", address2=" + address2 + ", address3=" + address3 + "]";
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

	public int getBusinessno() {
		return businessno;
	}

	public void setBusinessno(int businessno) {
		this.businessno = businessno;
	}

	public String getCpassword() {
		return cpassword;
	}

	public void setCpassword(String cpassword) {
		this.cpassword = pth.toHash(cpassword);
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

	public String getMphone() {
		return mphone;
	}

	public void setMphone(String mphone) {
		this.mphone = mphone;
	}

	public Date getFounded() {
		return founded;
	}

	public void setFounded(Date founded) {
		this.founded = founded;
	}

	public int getChk() {
		return chk;
	}

	public void setChk(int chk) {
		this.chk = chk;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getAddress3() {
		return address3;
	}

	public void setAddress3(String address3) {
		this.address3 = address3;
	}

}
