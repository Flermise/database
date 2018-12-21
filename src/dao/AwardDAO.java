package dao;

import java.util.List;

import entity.Award;

public interface AwardDAO extends DAO{
	public void insertAward(Award award);
	public void updateAward(Award award);
	public void deleteAward(int awdId);
	public Award findAwardById(int awdId);
	public List<Award> findAwardByAll();
}
