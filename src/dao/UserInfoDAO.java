package dao;

import java.util.List;

import entity.UserInfo;

public interface UserInfoDAO extends DAO{     
	public void insertUserInfo(UserInfo userInfo);
	public void updateUserInfo(UserInfo userInfo);
	public void deleteUserInfo(int userInfoId);
	public UserInfo findUserInfoById(int userInfoId);
	public List<UserInfo> findUserInfoByAll();
}	                                      
