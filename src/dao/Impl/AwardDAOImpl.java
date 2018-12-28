package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.AwardDAO;
import entity.Award;

public class AwardDAOImpl extends DAOBase implements AwardDAO{
	private Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	

	
	private static final String INSERT_AWARD_SQL=
			"insert into award(chName,enName,awdDate,awdCountry,website) values(?,?,?,?,?);";
	@Override
	public void insertAward(Award award) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_AWARD_SQL);
			ps.setString(1, award.getChName());
			ps.setString(2, award.getEnName());
			ps.setDate(3, award.getAwdDate());
			ps.setString(4, award.getAwdCountry());
			ps.setString(5, award.getWebsite());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}
	
	private static final String UPDATE_AWARD_SQL=
			"update award set chName=? ,enName=? ,awdDate=?,awdCountry=?,website=? where awdId=?";
	@Override
	public void updateAward(Award award) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(UPDATE_AWARD_SQL);
			ps.setString(1, award.getChName());
			ps.setString(2, award.getEnName());
			ps.setDate(3, award.getAwdDate());
			ps.setString(4, award.getAwdCountry());
			ps.setString(5, award.getWebsite());
			ps.setInt(6, award.getAwdId());
			ps.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}
	private static final String DELETE_AWARD_SQL=
			"delete from award where awdId = ?";
	@Override
	public void deleteAward(int awdId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_AWARD_SQL);
			ps.setInt(1, awdId);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}
	
	
	private static final String FIND_AWARD_BY_ID_SQL=
			"select * from award where awdId=?";
	@Override
	public Award findAwardById(int awdId) {
		Award award = new Award();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_AWARD_BY_ID_SQL);
			ps.setInt(1, awdId);
			rs = ps.executeQuery();
			if(rs.next()) {
				award.setAwdId(awdId);
				award.setAwdCountry(rs.getString("awdCountry"));
				award.setAwdDate(rs.getDate("awdDate"));
				award.setChName(rs.getString("chName"));
				award.setEnName(rs.getString("enName"));
				award.setWebsite(rs.getString("website"));
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		
		return award;
	}
	
	private static final String FIND_AWARD_BY_ALL_SQL=
			"select * from award;";
	@Override
	public List<Award> findAwardByAll() {
		List<Award> awards= new ArrayList<Award>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_AWARD_BY_ALL_SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				Award award = new Award();
				award.setAwdId(rs.getInt("awdId"));
				award.setAwdCountry(rs.getString("awdCountry"));
				award.setAwdDate(rs.getDate("awdDate"));
				award.setChName(rs.getString("chName"));
				award.setEnName(rs.getString("enName"));
				award.setWebsite(rs.getString("website"));
				awards.add(award);
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return awards;
	}

}
