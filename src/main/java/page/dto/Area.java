package page.dto;

public class Area {

	private int areano;
	private String aname;
	private float lat;
	private float lng;
	
	@Override
	public String toString() {
		return "Area [areano=" + areano + ", aname=" + aname + ", lat=" + lat + ", lng=" + lng + "]";
	}
	public int getAreano() {
		return areano;
	}
	public void setAreano(int areano) {
		this.areano = areano;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public float getLat() {
		return lat;
	}
	public void setLat(float lat) {
		this.lat = lat;
	}
	public float getLng() {
		return lng;
	}
	public void setLng(float lng) {
		this.lng = lng;
	}
}
