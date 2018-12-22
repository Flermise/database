package entity;

import java.sql.Date;

public class Movie {
	private int mId;
	private String chName;
	private String originName;
	private String otherName;
	private String poster;
	private Date releaseDate;
	private String timeLength;
	private String plot;
	private String IMDb;
	private String website;

	public int getmId() {
		return mId;
	}

	public void setmId(int mId) {
		this.mId = mId;
	}

	public String getChName() {
		return chName;
	}

	public void setChName(String chName) {
		this.chName = chName;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getOtherName() {
		return otherName;
	}

	public void setOtherName(String otherName) {
		this.otherName = otherName;
	}

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	public Date getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}

	public String getTimeLength() {
		return timeLength;
	}

	public void setTimeLength(String timeLength) {
		this.timeLength = timeLength;
	}

	public String getPlot() {
		return plot;
	}

	public void setPlot(String plot) {
		this.plot = plot;
	}

	public String getIMDb() {
		return IMDb;
	}

	public void setIMDb(String iMDb) {
		IMDb = iMDb;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	@Override
	public String toString() {
		return "Movie [mId=" + mId + ", chName=" + chName + ", originName=" + originName + ", otherName=" + otherName
				+ ", poster=" + poster + ", releaseDate=" + releaseDate + ", timeLength=" + timeLength + ", plot="
				+ plot + ", IMDb=" + IMDb + ", website=" + website + "]";
	}

}
