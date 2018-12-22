package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.CelebrityDAO;
import dao.DAOBase;
import entity.Celebrity;

public class CelebrityDAOImpl extends DAOBase implements CelebrityDAO{
	private  Connection conn = null;
	private  PreparedStatement ps = null;
	private  ResultSet rs = null;
	
	private static final String INSERT_CELEBRITY_SQL=
			"INSERT INTO celebrity(chName,enName,otherChName,otherEnName,avatar,sex,constellation,birthplace,"
			+ "birthday,deathday,familyMember,IMDb,intro)"
			+ " VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	public void insertCelebrity(Celebrity celebrity) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_CELEBRITY_SQL);
			ps.setString(1, celebrity.getChName());
			ps.setString(2, celebrity.getEnName());
			ps.setString(3, celebrity.getOtherChName());
			ps.setString(4, celebrity.getOtherEnName());
			ps.setString(5, celebrity.getAvatar());
			ps.setString(6, celebrity.getSex());
			ps.setString(7, celebrity.getConstellation());
			ps.setString(8, celebrity.getBirthplace());
			ps.setDate(9, celebrity.getBirthday());
			ps.setDate(10, celebrity.getDeathday());
			ps.setString(11, celebrity.getFamilyMember());
			ps.setString(12, celebrity.getIMDb());
			ps.setString(13, celebrity.getIntro());
			ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		
	}

	private static final String UPDATE_CELEBRITY_SQL=
			"UPDATE celebrity SET chName=?, enName=?, otherChName=?, otherEnName=?, avatar=?,"
			+ " sex=?, constellation=?, birthplace=?, birthday=?, deathday=?, familyMember=?, "
			+ "IMDb=?, intro=? WHERE celebId = ?";
	public void updateCelebrity(Celebrity celebrity) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(UPDATE_CELEBRITY_SQL);
			ps.setString(1, celebrity.getChName());
			ps.setString(2, celebrity.getEnName());
			ps.setString(3, celebrity.getOtherChName());
			ps.setString(4, celebrity.getOtherEnName());
			ps.setString(5, celebrity.getAvatar());
			ps.setString(6, celebrity.getSex());
			ps.setString(7, celebrity.getConstellation());
			ps.setString(8, celebrity.getBirthplace());
			ps.setDate(9, celebrity.getBirthday());
			ps.setDate(10, celebrity.getDeathday());
			ps.setString(11, celebrity.getFamilyMember());
			ps.setString(12, celebrity.getIMDb());
			ps.setString(13, celebrity.getIntro());
			ps.setInt(14, celebrity.getCelebId());
			ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String DELETE_CELEBRITY_SQL=
			"DELETE FROM celebrity WHERE celebId = ?";
	public void deleteCelebrity(int celebId)  {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_CELEBRITY_SQL);
			ps.setInt(1, celebId);
			ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String FIND_CELEBRITY_BY_ID_SQL=
			"SELECT * FROM celebrity WHERE celebId = ?";
	public Celebrity findCelebrityById(int celebId) {
		Celebrity celebrity = new Celebrity();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_CELEBRITY_BY_ID_SQL);
			ps.setInt(1, celebId);
			rs = ps.executeQuery();
			if(rs.next()) {
				celebrity.setCelebId(celebId);
				celebrity.setChName(rs.getString("chName"));
				celebrity.setEnName(rs.getString("enName"));
				celebrity.setOtherChName(rs.getString("otherChName"));
				celebrity.setOtherEnName(rs.getString("otherEnName"));
				celebrity.setAvatar(rs.getString("avatar"));
				celebrity.setSex(rs.getString("sex"));
				celebrity.setConstellation(rs.getString("constellation"));
				celebrity.setBirthplace(rs.getString("birthplace"));
				celebrity.setBirthday(rs.getDate("birthday"));
				celebrity.setDeathday(rs.getDate("deathday"));
				celebrity.setFamilyMember(rs.getString("familyMember"));
				celebrity.setIMDb(rs.getString("IMDb"));
				celebrity.setIntro(rs.getString("intro"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return celebrity;
	}

	private static final String FIND_CELEBRITY_BY_ALL_SQL=
			"SELECT * FROM celebrity";
	public List<Celebrity> findCelebrityByAll(){
		List<Celebrity> celebritys = new ArrayList<Celebrity>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_CELEBRITY_BY_ALL_SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				Celebrity celebrity = new Celebrity();
				celebrity.setCelebId(rs.getInt("celebId"));
				celebrity.setChName(rs.getString("chName"));
				celebrity.setEnName(rs.getString("enName"));
				celebrity.setOtherChName(rs.getString("otherChName"));
				celebrity.setOtherEnName(rs.getString("otherEnName"));
				celebrity.setAvatar(rs.getString("avatar"));
				celebrity.setSex(rs.getString("sex"));
				celebrity.setConstellation(rs.getString("constellation"));
				celebrity.setBirthplace(rs.getString("birthplace"));
				celebrity.setBirthday(rs.getDate("birthday"));
				celebrity.setDeathday(rs.getDate("deathday"));
				celebrity.setFamilyMember(rs.getString("familyMember"));
				celebrity.setIMDb(rs.getString("IMDb"));
				celebrity.setIntro(rs.getString("intro"));
				celebritys.add(celebrity);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return celebritys;
	}

}
