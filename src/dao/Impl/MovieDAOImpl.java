package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;

import java.util.ArrayList;
import java.util.List;

import dao.MovieDAO;
import entity.Movie;

public class MovieDAOImpl extends DAOBase implements MovieDAO{
	private  Connection conn = null;
	private  PreparedStatement ps = null;
	private  ResultSet rs = null;
	
	private static final String INSERT_MOVIE_SQL=
			"INSERT INTO movie(chName,originName,otherName,poster,releaseDate,timeLength,plot,IMDb,website)"
			+ " VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
	public void insertMovie(Movie movie) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_MOVIE_SQL);
			ps.setString(1, movie.getChName());
			ps.setString(2, movie.getOriginName());
			ps.setString(3, movie.getOtherName());
			ps.setString(4, movie.getPoster());
			ps.setDate(5, movie.getReleaseDate());
			ps.setString(6, movie.getTimeLength());
			ps.setString(7, movie.getPlot());
			ps.setString(8, movie.getIMDb());
			ps.setString(9, movie.getWebsite());
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		
	}

	private static final String UPDATE_MOVIE_SQL=
			"UPDATE movie SET chName=?, originName=?, otherName=?, poster=?, releaseDate=?, timeLength=?, plot=?, IMDb=?, website=? WHERE mId = ?";
	public void updateMovie(Movie movie) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(UPDATE_MOVIE_SQL);
			ps.setString(1, movie.getChName());
			ps.setString(2, movie.getOriginName());
			ps.setString(3, movie.getOtherName());
			ps.setString(4, movie.getPoster());
			ps.setDate(5, movie.getReleaseDate());
			ps.setString(6, movie.getTimeLength());
			ps.setString(7, movie.getPlot());
			ps.setString(8, movie.getIMDb());
			if(movie.getWebsite()!=null)
				ps.setString(9, movie.getWebsite());
				else {
					ps.setNull(9,Types.VARCHAR);
				}
			ps.setInt(10, movie.getmId());
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String DELETE_MOVIE_SQL=
			"DELETE FROM movie WHERE mId = ?";
	public void deleteMovie(int mId)  {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_MOVIE_SQL);
			ps.setInt(1, mId);
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String FIND_MOVIE_BY_ID_SQL=
			"SELECT * FROM movie WHERE mId = ?";
	public Movie findMovieById(int mId) {
		Movie movie = new Movie();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIE_BY_ID_SQL);
			ps.setInt(1, mId);
			rs = ps.executeQuery();
			if(rs.next()) {
				movie.setmId(mId);
				movie.setChName(rs.getString("chName"));
				movie.setOriginName(rs.getString("originName"));
				movie.setOtherName(rs.getString("otherName"));
				movie.setPoster(rs.getString("poster"));
				movie.setReleaseDate(rs.getDate("releaseDate"));
				movie.setTimeLength(rs.getString("timeLength"));
				movie.setPlot(rs.getString("plot"));
				movie.setIMDb(rs.getString("IMDb"));
				movie.setWebsite(rs.getString("website"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return movie;
	}

	private static final String FIND_MOVIE_BY_ALL_SQL=
			"SELECT * FROM movie";
	public List<Movie> findMovieByAll(){
		List<Movie> movies = new ArrayList<Movie>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIE_BY_ALL_SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				Movie movie = new Movie();
				movie.setmId(rs.getInt("mId"));
				movie.setChName(rs.getString("chName"));
				movie.setOriginName(rs.getString("originName"));
				movie.setOtherName(rs.getString("otherName"));
				movie.setPoster(rs.getString("poster"));
				movie.setReleaseDate(rs.getDate("releaseDate"));
				movie.setTimeLength(rs.getString("timeLength"));
				movie.setPlot(rs.getString("plot"));
				movie.setIMDb(rs.getString("IMDb"));
				movie.setWebsite(rs.getString("website"));
				movies.add(movie);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return movies;
	}

}