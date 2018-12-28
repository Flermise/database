package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.UserInfoDAO;
import entity.UserInfo;

public class UserInfoDAOImpl extends DAOBase implements UserInfoDAO{
	private  Connection conn = null;
	private  PreparedStatement ps = null;
	private  ResultSet rs = null;
	
	private static final String INSERT_USERINFO_SQL=
			"INSERT INTO userInfo VALUES(?, ?, ?, ?, ?)";
	public void insertUserInfo(UserInfo userInfo) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_USERINFO_SQL);
			ps.setInt(1, userInfo.getuId());
			ps.setString(2, userInfo.getImage());
			ps.setString(3, userInfo.getIntro());
			ps.setDate(4, userInfo.getRegistDate());
			ps.setString(5, userInfo.getCity());
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		
	}

	private static final String UPDATE_USERINFO_SQL=
			"UPDATE userInfo SET image=?, intro=?, registDate=?, city=? WHERE uId = ?";
	public void updateUserInfo(UserInfo userInfo) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(UPDATE_USERINFO_SQL);
			ps.setString(1, userInfo.getImage());
			ps.setString(2, userInfo.getIntro());
			ps.setDate(3, userInfo.getRegistDate());
			ps.setString(4, userInfo.getCity());
			ps.setInt(5, userInfo.getuId());
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String DELETE_USERINFO_SQL=
			"DELETE FROM userInfo WHERE uId = ?";
	public void deleteUserInfo(int uId)  {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_USERINFO_SQL);
			ps.setInt(1, uId);
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String FIND_USERINFO_BY_ID_SQL=
			"SELECT * FROM userInfo WHERE uId = ?";
	public UserInfo findUserInfoById(int uId) {
		UserInfo userInfo = new UserInfo();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_USERINFO_BY_ID_SQL);
			ps.setInt(1, uId);
			rs = ps.executeQuery();
			if(rs.next()) {
				userInfo.setuId(uId);
				userInfo.setImage(rs.getString("image"));
				userInfo.setIntro(rs.getString("intro"));
				userInfo.setRegistDate(rs.getDate("registDate"));
				userInfo.setCity(rs.getString("city"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return userInfo;
	}

	private static final String FIND_USERINFO_BY_ALL_SQL=
			"SELECT * FROM userInfo";
	public List<UserInfo> findUserInfoByAll(){
		List<UserInfo> userInfos = new ArrayList<UserInfo>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_USERINFO_BY_ALL_SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				UserInfo userInfo = new UserInfo();
				userInfo.setuId(rs.getInt("uId"));
				userInfo.setImage(rs.getString("image"));
				userInfo.setIntro(rs.getString("intro"));
				userInfo.setRegistDate(rs.getDate("registDate"));
				userInfo.setCity(rs.getString("city"));
				userInfos.add(userInfo);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return userInfos;
	}

}
