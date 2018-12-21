package dao;

import java.util.List;

import entity.User;

public interface UserDAO extends DAO{     
	public void insertUser(User user);
	public void updateUser(User user);
	public void deleteUser(int userId);
	public User findUserById(int userId);
	public List<User> findUserByAll();
}	                                      
