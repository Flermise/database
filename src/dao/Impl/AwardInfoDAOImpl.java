package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.AwardInfoDAO;
import dao.DAOBase;
import entity.AwardInfo;

public class AwardInfoDAOImpl extends DAOBase implements AwardInfoDAO{
	private Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	
	
	
	private static final String INSERT_AWARDINFO_SQL=
			"insert into awardInfo(awdId,awdInfoName) values(?,?);";
	@Override
	public void insertAwardInfo(AwardInfo awdInfo) {
			try {
				conn= getConnection();
				ps= conn.prepareStatement(INSERT_AWARDINFO_SQL);
				ps.setInt(1, awdInfo.getAwdId());
				ps.setString(2, awdInfo.getAwdInfoName());
				ps.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				release(conn, ps, rs);
			}
		
	}
	
	private static final String UPDATE_AWARDINFO_SQL=
			"update awardInfo set awdId = ? ,awdInfoName = ? where awdInfoId = ?";
	@Override
	public void updateAwardInfo(AwardInfo awdInfo) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(UPDATE_AWARDINFO_SQL);
			ps.setInt(1, awdInfo.getAwdId());
			ps.setString(2, awdInfo.getAwdInfoName());
			ps.setInt(3, awdInfo.getAwdInfoId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}
	
	private static final String DELETE_AWARDINFO_SQL=
			"delete from awardInfo where awdInfoId = ?";
	@Override
	public void deleteAwardInfo(int awdInfoId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_AWARDINFO_SQL);
			ps.setInt(1, awdInfoId);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
				release(conn, ps, rs);
		}
	}
	
	private static final String FIND_AWARDINFO_BY_ID_SQL= 
			"select * from awardInfo where awdInfoId =  ?";
	@Override
	public AwardInfo findAwardInfoById(int awdInfoId) {
		AwardInfo awdInfo = new AwardInfo();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_AWARDINFO_BY_ID_SQL);
			ps.setInt(1, awdInfoId);
			rs =  ps.executeQuery();
			if(rs.next()) {
				awdInfo.setAwdId(rs.getInt("awdId"));
				awdInfo.setAwdInfoId(awdInfoId);
				awdInfo.setAwdInfoName(rs.getString("awdInfoName"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return awdInfo;
	}
	
	private static final String FIND_AWARDINFO_BY_ALL_SQL = 
			"select * from awardInfo;";
	@Override
	public List<AwardInfo> findAwardInfoByAll() {
		List<AwardInfo> awdInfos = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_AWARDINFO_BY_ALL_SQL);
			rs =  ps.executeQuery();
			while(rs.next()) {
				AwardInfo awdInfo = new AwardInfo();
				awdInfo.setAwdId(rs.getInt("awdId"));
				awdInfo.setAwdInfoId(rs.getInt("awdInfoId"));
				awdInfo.setAwdInfoName(rs.getString("awdInfoName"));
				awdInfos.add(awdInfo);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return awdInfos;
	}
	

	


}
