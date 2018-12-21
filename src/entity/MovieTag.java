package entity;

public class MovieTag {
	private int mId;
	private int tagId;
	private int weight;

	public int getmId() {
		return mId;
	}

	public void setmId(int mId) {
		this.mId = mId;
	}

	public int getTagId() {
		return tagId;
	}

	public void setTagId(int tagId) {
		this.tagId = tagId;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	@Override
	public String toString() {
		return "MovieTag [mId=" + mId + ", tagId=" + tagId + ", weight=" + weight + "]";
	}

}
