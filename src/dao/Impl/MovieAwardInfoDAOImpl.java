package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.MovieAwardInfoDAO;
import dao.DAOBase;
import entity.MovieAwardInfo;

public class MovieAwardInfoDAOImpl extends DAOBase implements MovieAwardInfoDAO {
	private Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	
	private static final String INSERT_MOVIEAWARDINFO_SQL=
			"insert into movieAwardInfo values(?,?,?);";
	@Override
	public void insertMovieAwardInfo(MovieAwardInfo mai) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_MOVIEAWARDINFO_SQL);
			ps.setInt(1, mai.getAwdInfoId());
			ps.setInt(2, mai.getmId());
			ps.setString(3, mai.getState());
			ps.executeUpdate();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
		
	}
	
	private static final String UPDATE_MOVIEAWARDINFO_SQL=
			"update movieAwardInfo set state = ? where awdInfoId = ? and mId = ?";
	@Override
	public void updateMovieAwardInfo(MovieAwardInfo mai) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(UPDATE_MOVIEAWARDINFO_SQL);
			ps.setString(1, mai.getState());
			ps.setInt(2,mai.getAwdInfoId());
			ps.setInt(3, mai.getmId());
			ps.executeUpdate();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
	}
	
	private static final String DELETE_MOVIEAWARDINFO_SQL=
			"delete from movieAwardInfo where awdInfoId = ? and mId = ?";
	@Override
	public void deleteMovieAwardInfo(int awdInfoId, int mId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_MOVIEAWARDINFO_SQL);
			ps.setInt(1, awdInfoId);
			ps.setInt(2, mId);
			ps.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
	}
	
	private static final String DELETE_MOVIEAWARDINFO_BY_AWDINFOID_SQL=
			"delete from movieAwardInfo where awdInfoId = ?;";
	@Override
	public void deleteMovieAwardInfoByAwdInfoId(int awdInfoId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_MOVIEAWARDINFO_BY_AWDINFOID_SQL);
			ps.setInt(1, awdInfoId);
			ps.executeUpdate();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
	}
	
	private static final String DELETE_MOVIEAWARDINFO_BY_MID_SQL =
			"delete from movieAwardInfo where mId = ?;";
	@Override
	public void deleteMovieAwardInfoBymId(int mId) {
		try {
			conn  = getConnection();
			ps = conn.prepareStatement(DELETE_MOVIEAWARDINFO_BY_MID_SQL);
			ps.setInt(1, mId);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
		
	}
	
	private static final String FIND_MOVIEAWARDINFO_SQL = 
			"select * from movieAwardInfo where awdInfoId = ? and mId = ?";
	@Override
	public MovieAwardInfo findMovieAwardInfo(int awdInfoId, int mId) {
		MovieAwardInfo mai = new MovieAwardInfo();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIEAWARDINFO_SQL);
			ps.setInt(1, awdInfoId);
			ps.setInt(2, mId);
			rs = ps.executeQuery();
			if(rs.next()) {
				mai.setAwdInfoId(awdInfoId);
				mai.setmId(mId);
				mai.setState(rs.getString("state"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return mai;
	}
	
	private static final String FIND_MOVIEAWARDINFO_BY_AWDINFOID_SQL=
			"select * from movieAwardInfo where awdInfoId = ?;";
	@Override
	public List<MovieAwardInfo> findMovieAwardInfoByAwdInfoId(int awdInfoId) {
		List<MovieAwardInfo> mais = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIEAWARDINFO_BY_AWDINFOID_SQL);
			ps.setInt(1, awdInfoId);
			rs  = ps.executeQuery();
			while(rs.next()) {
				MovieAwardInfo mai = new MovieAwardInfo();
				mai.setAwdInfoId(awdInfoId);
				mai.setmId(rs.getInt("mId"));
				mai.setState(rs.getString("state"));
				mais.add(mai);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return mais;
	}
	
	private static final String FIND_MOVIEAWARDINFO_BY_MID_SQL=
			"select * from movieAwardInfo where mId = ?";
	@Override
	public List<MovieAwardInfo> findMovieAwardInfoBymId(int mId) {
		List<MovieAwardInfo> mais = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIEAWARDINFO_BY_MID_SQL);
			ps.setInt(1, mId);
			rs  = ps.executeQuery();
			while(rs.next()) {
				MovieAwardInfo mai = new MovieAwardInfo();
				mai.setAwdInfoId(rs.getInt("awdInfoId"));
				mai.setmId(mId);
				mai.setState(rs.getString("state"));
				mais.add(mai);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return mais;
	}
	
	private static  final String FIND_MOVIEAWARDINFO_BY_ALL_SQL=
			"select * from movieAwardInfo;";
	@Override
	public List<MovieAwardInfo> findMovieAwardInfoByAll() {
		List<MovieAwardInfo> mais = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIEAWARDINFO_BY_ALL_SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				MovieAwardInfo mai = new MovieAwardInfo();
				mai.setAwdInfoId(rs.getInt("awdInfoId"));
				mai.setmId(rs.getInt("mId"));
				mai.setState(rs.getString("state"));
				mais.add(mai);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return mais;
	}
	
	

}
