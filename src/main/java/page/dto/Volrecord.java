package page.dto;

public class Volrecord {

	private int applicantno;
	private int vol_time;
	@Override
	public String toString() {
		return "Volrecord [applicantno=" + applicantno + ", vol_time=" + vol_time + "]";
	}
	public int getApplicantno() {
		return applicantno;
	}
	public void setApplicantno(int applicantno) {
		this.applicantno = applicantno;
	}
	public int getVol_time() {
		return vol_time;
	}
	public void setVol_time(int vol_time) {
		this.vol_time = vol_time;
	}
	
	
	
}
