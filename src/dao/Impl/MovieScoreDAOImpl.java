package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.MovieScoreDAO;
import dao.DAOBase;
import entity.MovieScore;

public class MovieScoreDAOImpl  extends DAOBase implements MovieScoreDAO{
	private  Connection conn = null;
	private  PreparedStatement ps = null;
	private  ResultSet rs = null;
	
	private static final String INSERT_MOVIESCORE_SQL=
			"INSERT INTO movieScore VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
	public void insertMovieScore(MovieScore movieScore) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_MOVIESCORE_SQL);
			ps.setInt(1, movieScore.getmId());
			ps.setFloat(2, movieScore.getTotalScore());
			ps.setInt(3, movieScore.getTotalNumber());
			ps.setInt(4, movieScore.getFiveStar());
			ps.setInt(5, movieScore.getFourStar());
			ps.setInt(6, movieScore.getThreeStar());
			ps.setInt(7, movieScore.getTwoStar());
			ps.setInt(8, movieScore.getOneStar());
			ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		
	}

	private static final String UPDATE_MOVIESCORE_SQL=
			"UPDATE movieScore SET totalScore=?, totalNumber=?, "
			+ "fiveStar=?,fourStar=?,threestar=?,twostar=?,onestar=? WHERE mId = ?";
	public void updateMovieScore(MovieScore movieScore) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(UPDATE_MOVIESCORE_SQL);
			ps.setFloat(1, movieScore.getTotalScore());
			ps.setInt(2, movieScore.getTotalNumber());
			ps.setInt(3, movieScore.getFiveStar());
			ps.setInt(4, movieScore.getFourStar());
			ps.setInt(5, movieScore.getThreeStar());
			ps.setInt(6, movieScore.getTwoStar());
			ps.setInt(7, movieScore.getOneStar());
			ps.setInt(8, movieScore.getmId());
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String DELETE_MOVIESCORE_SQL=
			"DELETE FROM movieScore WHERE mId = ?";
	public void deleteMovieScore(int movieScoreId)  {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_MOVIESCORE_SQL);
			ps.setInt(1, movieScoreId);
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String FIND_MOVIESCORE_BY_ID_SQL=
			"SELECT * FROM movieScore WHERE mId = ?";
	public MovieScore findMovieScoreById(int movieScoreId) {
		MovieScore movieScore = new MovieScore();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIESCORE_BY_ID_SQL);
			ps.setInt(1, movieScoreId);
			rs = ps.executeQuery();
			if(rs.next()) {
				movieScore.setmId(movieScoreId);
				movieScore.setTotalScore(rs.getFloat("totalscore"));
				movieScore.setTotalNumber(rs.getInt("totalNumber"));
				movieScore.setFiveStar(rs.getInt("fiveStar"));
				movieScore.setFourStar(rs.getInt("fourStar"));
				movieScore.setThreeStar(rs.getInt("threeStar"));
				movieScore.setTwoStar(rs.getInt("twoStar"));
				movieScore.setOneStar(rs.getInt("oneStar"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return movieScore;
	}

	private static final String FIND_MOVIESCORE_BY_ALL_SQL=
			"SELECT * FROM movieScore";
	public List<MovieScore> findMovieScoreByAll(){
		List<MovieScore> movieScores = new ArrayList<MovieScore>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIESCORE_BY_ALL_SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				MovieScore movieScore = new MovieScore();
				movieScore.setmId(rs.getInt("mId"));
				movieScore.setTotalScore(rs.getFloat("totalscore"));
				movieScore.setTotalNumber(rs.getInt("totalNumber"));
				movieScore.setFiveStar(rs.getInt("fivestar"));
				movieScore.setFourStar(rs.getInt("fivestar"));
				movieScore.setThreeStar(rs.getInt("threestar"));
				movieScore.setTwoStar(rs.getInt("twostar"));
				movieScore.setOneStar(rs.getInt("onestar"));
				movieScores.add(movieScore);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return movieScores;
	}

}
