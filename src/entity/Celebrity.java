package entity;

import java.sql.Date;

public class Celebrity {
	private int celebId;
	private String chName;
	private String enName;
	private String otherChName;
	private String otherEnName;
	private String avatar;
	private String sex;
	private String constellation;
	private String birthplace;
	private Date birthday;
	private Date deathday;
	private String familyMember;
	private String IMDb;
	private String intro;

	public int getCelebId() {
		return celebId;
	}

	public void setCelebId(int celebId) {
		this.celebId = celebId;
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

	public String getOtherChName() {
		return otherChName;
	}

	public void setOtherChName(String otherChName) {
		this.otherChName = otherChName;
	}

	public String getOtherEnName() {
		return otherEnName;
	}

	public void setOtherEnName(String otherEnName) {
		this.otherEnName = otherEnName;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getConstellation() {
		return constellation;
	}

	public void setConstellation(String constellation) {
		this.constellation = constellation;
	}

	public String getBirthplace() {
		return birthplace;
	}

	public void setBirthplace(String birthplace) {
		this.birthplace = birthplace;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Date getDeathday() {
		return deathday;
	}

	public void setDeathday(Date deathday) {
		this.deathday = deathday;
	}

	public String getFamilyMember() {
		return familyMember;
	}

	public void setFamilyMember(String familyMember) {
		this.familyMember = familyMember;
	}

	public String getIMDb() {
		return IMDb;
	}

	public void setIMDb(String iMDb) {
		IMDb = iMDb;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	@Override
	public String toString() {
		return "Celebrity [celebId=" + celebId + ", chName=" + chName + ", enName=" + enName + ", otherChName="
				+ otherChName + ", otherEnName=" + otherEnName + ", avatar=" + avatar + ", sex=" + sex
				+ ", constellation=" + constellation + ", birthplace=" + birthplace + ", birthday=" + birthday
				+ ", deathday=" + deathday + ", familyMember=" + familyMember + ", IMDb=" + IMDb + ", intro=" + intro
				+ "]";
	}

	

}
