package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.MovieTagDAO;
import entity.MovieTag;

public class MovieTagDAOImpl extends DAOBase implements MovieTagDAO{
	private  Connection conn = null;
	private  PreparedStatement ps = null;
	private  ResultSet rs = null;
	
	private static final String INSERT_MOVIETAG_SQL=
			"INSERT INTO movieTag VALUES(?, ?, ?)";
	public void insertMovieTag(MovieTag movieTag) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_MOVIETAG_SQL);
			ps.setInt(1, movieTag.getmId());
			ps.setInt(2, movieTag.getTagId());
			ps.setInt(3, movieTag.getWeight());
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		
	}

	private static final String UPDATE_MOVIETAG_SQL=
			"UPDATE movieTag SET tagId=?,weight=? WHERE mId = ?";
	public void updateMovieTag(MovieTag movieTag) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(UPDATE_MOVIETAG_SQL);
			ps.setInt(1, movieTag.getTagId());
			ps.setInt(2, movieTag.getWeight());
			ps.setInt(3, movieTag.getmId());
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String DELETE_MOVIETAG_SQL=
			"DELETE FROM movieTag WHERE mId = ? and tagId = ?";
	public void deleteMovieTag(int mId,int tagId)  {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_MOVIETAG_SQL);
			ps.setInt(1, mId);
			ps.setInt(2, tagId);
			ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String DELETE_MOVIETAG_BY_MID_SQL=
			"delete from movieTag where mId = ?;";
	@Override
	public void deleteMovieTagByMId(int mId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_MOVIETAG_BY_MID_SQL);
			ps.setInt(1, mId);
			ps.executeUpdate();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
	}
	
	private static final String DELETE_MOVIETAG_BY_TAGID_SQL=
			"delete from movieTag where tagId = ?;";
	@Override
	public void deleteMovieTagByTagId(int tagId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_MOVIETAG_BY_TAGID_SQL);
			ps.setInt(1, tagId);
			ps.executeUpdate();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
		
	}
	
	private static final String FIND_MOVIETAG_SQL=
			"SELECT * FROM movieTag WHERE mId = ? and tagId = ?";
	public MovieTag findMovieTag(int mId,int tagId) {
		MovieTag movieTag = new MovieTag();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIETAG_SQL);
			ps.setInt(1, mId);
			ps.setInt(2, tagId);
			rs = ps.executeQuery();
			if(rs.next()) {
				movieTag.setmId(mId);
				movieTag.setTagId(tagId);
				movieTag.setWeight(rs.getInt("weight"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return movieTag;
	}
	
	private static final String FIND_MOVIETAG_BY_MID_SQL=
			"SELECT * FROM movieTag WHERE mId = ?";
	public List<MovieTag> findMovieTagByMId(int mId) {
		List<MovieTag> movieTags  = new ArrayList<MovieTag>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIETAG_BY_MID_SQL);
			ps.setInt(1, mId);
			rs = ps.executeQuery();
			if(rs.next()) {
				MovieTag movieTag = new MovieTag();
				movieTag.setmId(mId);
				movieTag.setTagId(rs.getInt("tagId"));
				movieTag.setWeight(rs.getInt("weight"));
				movieTags.add(movieTag);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return movieTags;
	}
	
	private static final String FIND_MOVIETAG_BY_TAGID_SQL=
			"SELECT * FROM movieTag WHERE tagId = ?";
	public List<MovieTag> findMovieTagByTagId(int tagId) {
		List<MovieTag> movieTags =  new ArrayList<MovieTag>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIETAG_BY_TAGID_SQL);
			ps.setInt(1, tagId);
			rs = ps.executeQuery();
			if(rs.next()) {
				MovieTag movieTag = new MovieTag();
				movieTag.setmId(rs.getInt("mId"));
				movieTag.setTagId(tagId);
				movieTag.setWeight(rs.getInt("weight"));
				movieTags.add(movieTag);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return movieTags;
	}

	private static final String FIND_MOVIETAG_BY_ALL_SQL=
			"SELECT * FROM movieTag";
	public List<MovieTag> findMovieTagByAll(){
		List<MovieTag> movieTags = new ArrayList<MovieTag>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIETAG_BY_ALL_SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				MovieTag movieTag = new MovieTag();
				movieTag.setmId(rs.getInt("mId"));
				movieTag.setTagId(rs.getInt("tagId"));
				movieTag.setWeight(rs.getInt("weight"));
				movieTags.add(movieTag);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return movieTags;
	}
}
