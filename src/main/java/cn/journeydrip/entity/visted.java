package cn.journeydrip.entity;
public class visted {

	private Integer vid;
	private String username;
	private String date;
	public Integer getVid() {
		return vid;
	}
	public void setVid(Integer vid) {
		this.vid = vid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "visted [vid=" + vid + ", username=" + username + ", date=" + date + "]";
	}
	public visted(Integer vid, String username, String date) {
		super();
		this.vid = vid;
		this.username = username;
		this.date = date;
	}
	public visted() {
		super();
	}



}
