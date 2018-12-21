package entity;

public class MovieScore {
	private int mId;
	private float totalScore;
	private int totalNumber;
	private int fiveStar;
	private int fourStar;
	private int threeStar;
	private int twoStar;
	
	public int getmId() {
		return mId;
	}
	public void setmId(int mId) {
		this.mId = mId;
	}
	public float getTotalScore() {
		return totalScore;
	}
	public void setTotalScore(float totalScore) {
		this.totalScore = totalScore;
	}
	public int getTotalNumber() {
		return totalNumber;
	}
	public void setTotalNumber(int totalNumber) {
		this.totalNumber = totalNumber;
	}
	public int getFiveStar() {
		return fiveStar;
	}
	public void setFiveStar(int fiveStar) {
		this.fiveStar = fiveStar;
	}
	public int getFourStar() {
		return fourStar;
	}
	public void setFourStar(int fourStar) {
		this.fourStar = fourStar;
	}
	public int getThreeStar() {
		return threeStar;
	}
	public void setThreeStar(int threeStar) {
		this.threeStar = threeStar;
	}
	public int getTwoStar() {
		return twoStar;
	}
	public void setTwoStar(int twoStar) {
		this.twoStar = twoStar;
	}
	public int getOneStar() {
		return oneStar;
	}
	public void setOneStar(int oneStar) {
		this.oneStar = oneStar;
	}
	private int oneStar;
	
}