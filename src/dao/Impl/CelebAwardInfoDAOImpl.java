package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.CelebAwardInfoDAO;
import entity.CelebAwardInfo;

public class CelebAwardInfoDAOImpl extends DAOBase implements CelebAwardInfoDAO {
	private Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	
	
	private static final String INSERT_CELEBAWARDINFO_SQL=
			"insert into celebAwardInfo values(?,?,?);";

	@Override
	public void insertCelebAwardInfo(CelebAwardInfo cai) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_CELEBAWARDINFO_SQL);
			ps.setInt(1, cai.getAwdInfoId());
			ps.setInt(2, cai.getCelebId());
			ps.setString(3, cai.getState());
			ps.executeUpdate();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
	}
	
	private static final String UPDATE_CELEBAWARDINFO_SQL=
			"update celebAwardInfo set state = ? where awdInfoId = ? and celebId = ?";
	@Override
	public void updateCelebAwardInfo(CelebAwardInfo cai) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(UPDATE_CELEBAWARDINFO_SQL);
			ps.setString(1, cai.getState());
			ps.setInt(2,cai.getAwdInfoId());
			ps.setInt(3, cai.getCelebId());
			ps.executeUpdate();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
	}
	private static final String DELETE_CELEBAWARDINFO_SQL=
			"delete from celebAwardInfo where awdInfoId = ? and celebId = ?";
	@Override
	public void deleteCelebAwardInfo(int awdInfoId, int celebId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_CELEBAWARDINFO_SQL);
			ps.setInt(1, awdInfoId);
			ps.setInt(2, celebId);
			ps.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
	}
	
	private static final String DELETE_CELEBAWARDINFO_BY_AWDINFOID_SQL=
			"delete from celebAwardInfo where awdInfoId = ?;";
	@Override
	public void deleteCelebAwardInfoByAwdInfoId(int awdInfoId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_CELEBAWARDINFO_BY_AWDINFOID_SQL);
			ps.setInt(1, awdInfoId);
			ps.executeUpdate();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
		
	}
	
	private static final String DELETE_CELEBAWARDINFO_BY_CELEBID_SQL =
			"delete from celebAwardInfo where celebId = ?;";
	@Override
	public void deleteCelebAwardInfoByCelebId(int celebId) {
		try {
			conn  = getConnection();
			ps = conn.prepareStatement(DELETE_CELEBAWARDINFO_BY_CELEBID_SQL);
			ps.setInt(1, celebId);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
		
	}
	
	private static final String FIND_CELEBAWARDINFO_SQL = 
			"select * from celebAwardInfo where awdInfoId = ? and celebId = ?";
	@Override
	public CelebAwardInfo findCelebAwardInfo(int awdInfoId, int celebId) {
		CelebAwardInfo cai = new CelebAwardInfo();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_CELEBAWARDINFO_SQL);
			ps.setInt(1, awdInfoId);
			ps.setInt(2, celebId);
			rs = ps.executeQuery();
			if(rs.next()) {
				cai.setAwdInfoId(awdInfoId);
				cai.setCelebId(celebId);
				cai.setState(rs.getString("state"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return cai;
	}
	
	private static final String FIND_CELEBAWARDINFO_BY_AWDINFOID_SQL=
			"select * from celebAwardInfo where awdInfoId = ?;";
	@Override
	public List<CelebAwardInfo> findCelebAwardInfoByAwdInfoId(int awdInfoId) {
		List<CelebAwardInfo> cais = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_CELEBAWARDINFO_BY_AWDINFOID_SQL);
			ps.setInt(1, awdInfoId);
			rs = ps.executeQuery();
			while(rs.next()) {
				CelebAwardInfo cai = new CelebAwardInfo();
				cai.setAwdInfoId(awdInfoId);
				cai.setCelebId(rs.getInt("celebId"));
				cai.setState(rs.getString("state"));
				cais.add(cai);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		
		return cais;
	}
	
	private static final String FIND_CELEBAWARDINFO_BY_CELEBID_SQL=
			"select * from celebAwardInfo where celebId = ?";
	@Override
	public List<CelebAwardInfo> findCelebAwardInfoByCelebId(int celebId) {
		List<CelebAwardInfo> cais = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_CELEBAWARDINFO_BY_CELEBID_SQL);
			ps.setInt(1, celebId);
			rs = ps.executeQuery();
			while(rs.next()) {
				CelebAwardInfo cai = new CelebAwardInfo();
				cai.setAwdInfoId(rs.getInt("awdInfoId"));
				cai.setCelebId(celebId);
				cai.setState(rs.getString("state"));
				cais.add(cai);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		
		return cais;
	}
	
	private static  final String FIND_CELEBAWARDINFO_BY_ALL_SQL=
			"select * from celebAwardInfo;";
	@Override
	public List<CelebAwardInfo> findCelebAwardInfoByAll() {
		List<CelebAwardInfo> cais = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_CELEBAWARDINFO_BY_ALL_SQL);
			rs  = ps.executeQuery();
			while(rs.next()) {
				CelebAwardInfo cai = new CelebAwardInfo();
				cai.setAwdInfoId(rs.getInt("awdInfoId"));
				cai.setCelebId(rs.getInt("celebId"));
				cai.setState(rs.getString("state"));
				cais.add(cai);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		
		return cais;
	}

}
