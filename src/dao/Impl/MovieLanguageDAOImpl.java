package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.MovieLanguageDAO;
import entity.MovieLanguage;

public class MovieLanguageDAOImpl extends DAOBase implements MovieLanguageDAO{
	private Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	
	
	private static final String INSERT_MOVIELANGUAGE_SQL=
			"insert into movieLanguage values(?,?)";
	@Override
	public void insertMoiveLanguage(MovieLanguage ml) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_MOVIELANGUAGE_SQL);
			ps.setInt(1, ml.getmId());
			ps.setInt(2, ml.getLanguageId());
			ps.executeUpdate(); 
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
	}
	
	private static final String DELETE_MOVIELANGUAGE_SQL = 
			"delete from movieLanguage where mId = ? and languageId = ?";
	@Override
	public void deleteMoiveLanguage(int mId, int languageId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_MOVIELANGUAGE_SQL);
			ps.setInt(1, mId);
			ps.setInt(2, languageId);
			ps.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
	}
	
	private static final String DELETE_MOVIELANGUAGE_BY_MID_SQL = 
			"delete from movieLanguage where mId = ?";
	@Override
	public void deleteMoiveLanguageBymId(int mId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_MOVIELANGUAGE_BY_MID_SQL);
			ps.setInt(1, mId);
			ps.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}	
	}
	
	private static final String DELETE_MOVIELANGUAGE_BY_LANGUAGEID_SQL = 
			"delete from movieLanguage where languageId = ?";
	@Override
	public void deleteMoiveLanguageByLanguageId(int languageId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_MOVIELANGUAGE_BY_LANGUAGEID_SQL);
			ps.setInt(1, languageId);
			ps.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}	
	}
	
	private static final String FIND_MOVIELANGUAGE_BY_MID_SQL = 
			"select * from movieLanguage where mId =  ?";
	@Override
	public List<MovieLanguage> findMovieLanguageBymId(int mId) {
		List<MovieLanguage> mls = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIELANGUAGE_BY_MID_SQL);
			ps.setInt(1, mId);
			rs = ps.executeQuery();
			while(rs.next()) {
				MovieLanguage ml = new MovieLanguage();
				ml.setmId(rs.getInt("mId"));
				ml.setLanguageId(rs.getInt("languageId"));
				mls.add(ml);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
		return mls;
	}
	
	private static final String FIND_MOVIELANGUAGE_BY_LANGUAGEID_SQL = 
			"select * from movieLanguage where languageId = ?";
	@Override
	public List<MovieLanguage> findMovieLanguageByLanguageId(int languageId) {
		List<MovieLanguage> mls = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIELANGUAGE_BY_LANGUAGEID_SQL);
			ps.setInt(1, languageId);
			rs = ps.executeQuery();
			while(rs.next()) {
				MovieLanguage ml = new MovieLanguage();
				ml.setmId(rs.getInt("mId"));
				ml.setLanguageId(rs.getInt("languageId"));
				mls.add(ml);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
		return mls;
	}
	
	private static final String FIND_MOVIELANGUAGE_ALL_SQL = 
		"select * from movieLanguage";
	@Override
	public List<MovieLanguage> findMovieLanguageByAll() {
		List<MovieLanguage> mls = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIELANGUAGE_ALL_SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				MovieLanguage ml = new MovieLanguage();
				ml.setmId(rs.getInt("mId"));
				ml.setLanguageId(rs.getInt("languageId"));
				mls.add(ml);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
		return mls;
	}

}
