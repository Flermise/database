package dao;

import java.util.List;

import entity.Celebrity;

public interface CelebrityDAO extends DAO{     
	public void insertCelebrity(Celebrity celebrity);
	public void updateCelebrity(Celebrity celebrity);
	public void deleteCelebrity(int celebId);
	public Celebrity findCelebrityById(int celebId);
	public List<Celebrity> findCelebrityByAll();
}	                                      
