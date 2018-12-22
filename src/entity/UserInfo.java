package entity;

import java.sql.Date;

public class UserInfo {
	private	int uId;
	private String image;
	private String intro;
	private Date registDate;
	private String city;
	
	public int getuId() {
		return uId;
	}

	public void setuId(int uId) {
		this.uId = uId;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public Date getRegistDate() {
		return registDate;
	}

	public void setRegistDate(Date registDate) {
		this.registDate = registDate;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Override
	public String toString() {
		return "UserInfo [uId=" + uId + ", image=" + image + ", intro=" + intro + ", registDate=" + registDate
				+ ", city=" + city + "]";
	}
	
}
