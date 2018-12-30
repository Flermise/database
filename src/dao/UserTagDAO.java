package dao;

import java.util.List;

import entity.UserTag;

public interface UserTagDAO extends DAO{
	
	public void insertUserTag(UserTag ut);
	
	public void deleteUserTag(int uId,int tagId);
	public void deleteUserTagByuId(int uId);
	public void deleteUserTagByTagId(int tagId);
	
	public List<UserTag> findUserTagByuId(int uId);
	public List<UserTag> findUserTagByTagId(int tagId);
	public List<UserTag> findUserTagByAll();
}
