package dao;

import java.util.List;

import entity.UserTable;

public interface UserTableDAO extends DAO{     
	public void insertUser(UserTable user);
	public void updateUser(UserTable user);
	public void deleteUser(int userId);
	public UserTable findUserById(int userId);
	public List<UserTable> findUserByAll();
}	                                      
