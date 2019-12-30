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
	
	@Override
	public String toString() {
		return "BestVolunteer [bestno=" + bestno + ", userno=" + userno + ", writedate=" + writedate + ", hit=" + hit
				+ ", bestTitle=" + bestTitle + ", bestContent=" + bestContent + ", pic=" + pic + "]";
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
	
	

}
