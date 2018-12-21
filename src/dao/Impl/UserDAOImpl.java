package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.UserDAO;
import dao.DAOBase;
import entity.User;

public class UserDAOImpl extends DAOBase implements UserDAO{
	private  Connection conn = null;
	private  PreparedStatement ps = null;
	private  ResultSet rs = null;
	
	private static final String INSERT_USER_SQL=
			"INSERT INTO user VALUES(?, ?, ?, ?, ?)";
	public void insertUser(User user) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_USER_SQL);
			ps.setInt(1, user.getuId());
			ps.setString(2, user.getUserName());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getPhoneNumber());
			ps.setString(5, user.getEmail());
			ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		
	}

	private static final String UPDATE_USER_SQL=
			"UPDATE user SET userName=?,password=?,phoneNumber=?,emial=? WHERE uId = ?";
	public void updateUser(User user) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(UPDATE_USER_SQL);
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getPhoneNumber());
			ps.setString(4, user.getEmail());
			ps.setInt(1, user.getuId());
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String DELETE_USER_SQL=
			"DELETE FROM user WHERE uId = ?";
	public void deleteUser(int userId)  {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_USER_SQL);
			ps.setInt(1, userId);
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String FIND_USER_BY_ID_SQL=
			"SELECT * FROM user WHERE uId = ?";
	public User findUserById(int userId) {
		User user = new User();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_USER_BY_ID_SQL);
			ps.setInt(1, userId);
			rs = ps.executeQuery();
			if(rs.next()) {
				user.setuId(userId);
				user.setUserName(rs.getString("userName"));
				user.setPassword(rs.getString("password"));
				user.setPhoneNumber(rs.getString("password"));
				user.setEmail(rs.getString("email"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return user;
	}

	private static final String FIND_USER_BY_ALL_SQL=
			"SELECT * FROM user";
	public List<User> findUserByAll(){
		List<User> users = new ArrayList<User>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_USER_BY_ALL_SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				User user = new User();
				user.setuId(rs.getInt("uId"));
				user.setUserName(rs.getString("userName"));
				user.setPassword(rs.getString("password"));
				user.setPhoneNumber(rs.getString("password"));
				user.setEmail(rs.getString("email"));
				users.add(user);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return users;
	}

}
