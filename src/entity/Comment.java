package entity;

import java.sql.Timestamp;

public class Comment {
	private int uId;
	private int mId;
	private String state;
	private float score;
	private Timestamp cmtTime;
	private String cmtContent;
	private int likeNum;
	private String isVisible;

	public int getuId() {
		return uId;
	}

	public void setuId(int uId) {
		this.uId = uId;
	}

	public int getmId() {
		return mId;
	}

	public void setmId(int mId) {
		this.mId = mId;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public float getScore() {
		return score;
	}

	public void setScore(float score) {
		this.score = score;
	}

	public Timestamp getCmtTime() {
		return cmtTime;
	}

	public void setCmtTime(Timestamp cmtTime) {
		this.cmtTime = cmtTime;
	}

	public String getCmtContent() {
		return cmtContent;
	}

	public void setCmtContent(String cmtContent) {
		this.cmtContent = cmtContent;
	}

	public int getLikeNum() {
		return likeNum;
	}

	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}

	public String getIsVisible() {
		return isVisible;
	}

	public void setIsVisible(String isVisible) {
		this.isVisible = isVisible;
	}

	@Override
	public String toString() {
		return "Comment [uId=" + uId + ", mId=" + mId + ", state=" + state + ", score=" + score + ", cmtTime=" + cmtTime
				+ ", cmtContent=" + cmtContent + ", likeNum=" + likeNum + ", isVisible=" + isVisible + "]";
	}

}
