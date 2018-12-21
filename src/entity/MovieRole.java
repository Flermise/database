package entity;

public class MovieRole {
	private int mrId;
	private int celebId;
	private int mId;
	private	String profName;
	private String roleName;
	
	public int getMrId() {
		return mrId;
	}
	public void setMrId(int mrId) {
		this.mrId = mrId;
	}
	public int getCelebId() {
		return celebId;
	}
	public void setCelebId(int celebId) {
		this.celebId = celebId;
	}
	public int getmId() {
		return mId;
	}
	public void setmId(int mId) {
		this.mId = mId;
	}
	public String getProfName() {
		return profName;
	}
	public void setProfName(String profName) {
		this.profName = profName;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
}
