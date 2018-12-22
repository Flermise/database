package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.UserTableDAO;
import dao.DAOBase;
import entity.UserTable;

public class UserTableDAOImpl extends DAOBase implements UserTableDAO{
	private  Connection conn = null;
	private  PreparedStatement ps = null;
	private  ResultSet rs = null;
	
	private static final String INSERT_USERTABLE_SQL=
			"insert into usertable(userName,password,phoneNumber,email) values(?, ?, ?, ?)";
	public void insertUser(UserTable user) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_USERTABLE_SQL);
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getPhoneNumber());
			ps.setString(4, user.getEmail());
			ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		
	}

	private static final String UPDATE_USERTABLE_SQL=
			"UPDATE usertable SET userName=?,password=?,phoneNumber=?,email=? WHERE uId = ?";
	public void updateUser(UserTable user) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(UPDATE_USERTABLE_SQL);
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getPhoneNumber());
			ps.setString(4, user.getEmail());
			ps.setInt(5, user.getuId());
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String DELETE_USERTABLE_SQL=
			"DELETE FROM usertable WHERE uId = ?";
	public void deleteUser(int userId)  {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_USERTABLE_SQL);
			ps.setInt(1, userId);
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String FIND_USERTABLE_BY_ID_SQL=
			"SELECT * FROM usertable WHERE uId = ?";
	public UserTable findUserById(int userId) {
		UserTable user = new UserTable();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_USERTABLE_BY_ID_SQL);
			ps.setInt(1, userId);
			rs = ps.executeQuery();
			if(rs.next()) {
				user.setuId(userId);
				user.setUserName(rs.getString("userName"));
				user.setPassword(rs.getString("password"));
				user.setPhoneNumber(rs.getString("phoneNumber"));
				user.setEmail(rs.getString("email"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return user;
	}

	private static final String FIND_USERTABLE_BY_ALL_SQL=
			"SELECT * FROM usertable";
	public List<UserTable> findUserByAll(){
		List<UserTable> users = new ArrayList<UserTable>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_USERTABLE_BY_ALL_SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				UserTable user = new UserTable();
				user.setuId(rs.getInt("uId"));
				user.setUserName(rs.getString("userName"));
				user.setPassword(rs.getString("password"));
				user.setPhoneNumber(rs.getString("phoneNumber"));
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
