package entity;

import java.sql.Date;

public class Award {

	private int awdId; // 奖项id
	private String chName; // 奖项中文名
	private String enName; // 奖项英文名
	private Date awdDate; // 颁奖时间
	private String awdCountry; // 颁奖城市
	private String website; // 官方网站

	public int getAwdId() {
		return awdId;
	}

	public void setAwdId(int awdId) {
		this.awdId = awdId;
	}

	public String getChName() {
		return chName;
	}

	public void setChName(String chName) {
		this.chName = chName;
	}

	public String getEnName() {
		return enName;
	}

	public void setEnName(String enName) {
		this.enName = enName;
	}

	public Date getAwdDate() {
		return awdDate;
	}

	public void setAwdDate(Date awdDate) {
		this.awdDate = awdDate;
	}

	public String getAwdCountry() {
		return awdCountry;
	}

	public void setAwdCountry(String awdCountry) {
		this.awdCountry = awdCountry;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	@Override
	public String toString() {
		return "Award [awdId=" + awdId + ", chName=" + chName + ", enName=" + enName + ", awdDate=" + awdDate
				+ ", awdCountry=" + awdCountry + ", website=" + website + "]";
	}

}
