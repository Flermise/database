package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.UserTagDAO;
import entity.UserTag;

public class UserTagDAOImpl extends DAOBase implements UserTagDAO{
	private Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	
	
	private static final String INSERT_USERTAG_SQL = 
			"insert into userTag values(?,?);";
	@Override
	public void insertUserTag(UserTag ut) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_USERTAG_SQL);
			ps.setInt(1, ut.getuId());
			ps.setInt(2, ut.getTagId());
			ps.executeUpdate(); 
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
	}
	
	private static final String DELETE_USERTAG_SQL = 
			"delete from userTag where uId = ? and tagId = ?";
	@Override
	public void deleteUserTag(int uId, int tagId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_USERTAG_SQL);
			ps.setInt(1, uId);
			ps.setInt(2, tagId);
			ps.executeUpdate(); 
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
	}

	private static final String DELETE_USERTAG_BY_UID_SQL = 
			"delete from userTag where uId = ?";
	@Override
	public void deleteUserTagByuId(int uId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_USERTAG_BY_UID_SQL);
			ps.setInt(1, uId);
			ps.executeUpdate(); 
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
	}
	
	public static final String DELETE_USERTAG_BY_TAGID_SQL = 
			"delete from userTag where tagId = ?";
	@Override
	public void deleteUserTagByTagId(int tagId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_USERTAG_BY_TAGID_SQL);
			ps.setInt(1, tagId);
			ps.executeUpdate(); 
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
	}

	private static final String FIND_USERTAG_BY_UID_SQL = 
			"select * from userTag where uId = ?";
	@Override
	public List<UserTag> findUserTagByuId(int uId) {
		List<UserTag> uts = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_USERTAG_BY_UID_SQL);
			ps.setInt(1, uId);
			rs = ps.executeQuery();
			while(rs.next()) {
				UserTag ut = new UserTag();
				ut.setTagId(rs.getInt("tagId"));
				ut.setuId(rs.getInt("uId"));
				uts.add(ut);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
		return uts;
	}
	private static final String FIND_USERTAG_BY_TAGID_SQL = 
			"select * from userTag where tagId = ?";
	@Override
	public List<UserTag> findUserTagByTagId(int tagId) {
		List<UserTag> uts = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_USERTAG_BY_TAGID_SQL);
			ps.setInt(1, tagId);
			rs = ps.executeQuery();
			while(rs.next()) {
				UserTag ut = new UserTag();
				ut.setTagId(rs.getInt("tagId"));
				ut.setuId(rs.getInt("uId"));
				uts.add(ut);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
		return uts;
	}
	
	private static final String FIND_USERTAG_BY_ALL_SQL = 
			"select * from userTag";
	@Override
	public List<UserTag> findUserTagByAll() {
		List<UserTag> uts = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_USERTAG_BY_ALL_SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				UserTag ut = new UserTag();
				ut.setTagId(rs.getInt("tagId"));
				ut.setuId(rs.getInt("uId"));
				uts.add(ut);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
		return uts;
	}

}
