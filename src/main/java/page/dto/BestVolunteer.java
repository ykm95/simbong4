package page.dto;

import java.util.Date;

public class BestVolunteer {
	
	private int bestno;
	private int userno;
	private Date writedate;
	private String hit;
	private String bestTitle;
	private String bestContent;
	private String pic;
	private String uname;
	private int vol_time;
	
	@Override
	public String toString() {
		return "BestVolunteer [bestno=" + bestno + ", userno=" + userno + ", writedate=" + writedate + ", hit=" + hit
				+ ", bestTitle=" + bestTitle + ", bestContent=" + bestContent + ", pic=" + pic + ", uname=" + uname
				+ ", vol_time=" + vol_time + "]";
	}

	public int getBestno() {
		return bestno;
	}

	public void setBestno(int bestno) {
		this.bestno = bestno;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public Date getWritedate() {
		return writedate;
	}

	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}

	public String getBestTitle() {
		return bestTitle;
	}

	public void setBestTitle(String bestTitle) {
		this.bestTitle = bestTitle;
	}

	public String getBestContent() {
		return bestContent;
	}

	public void setBestContent(String bestContent) {
		this.bestContent = bestContent;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public int getVol_time() {
		return vol_time;
	}

	public void setVol_time(int vol_time) {
		this.vol_time = vol_time;
	}
	
	
	
}
