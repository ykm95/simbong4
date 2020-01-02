package page.dto;

public class Admin {
	
	private int adminno;		
	private String admin_id;		
	private String admin_pw;
	
	@Override
	public String toString() {
		return "Admin [adminno=" + adminno + ", admin_id=" + admin_id + ", admin_pw=" + admin_pw + "]";
	}
	
	public int getAdminno() {
		return adminno;
	}
	public void setAdminno(int adminno) {
		this.adminno = adminno;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_pw() {
		return admin_pw;
	}
	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}
	
	
	
}
