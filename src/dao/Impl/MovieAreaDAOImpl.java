package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.MovieAreaDAO;
import entity.MovieArea;

public class MovieAreaDAOImpl extends DAOBase implements MovieAreaDAO{
	private Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	
	private static final String INSERT_MOVIEAREA_SQL =
			"insert into movieArea values(?,?)";
	@Override
	public void insertMovieArea(MovieArea moviearea) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_MOVIEAREA_SQL);
			ps.setInt(1, moviearea.getmId());
			ps.setInt(2, moviearea.getAreaId());
			ps.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
	}

	private static final String DELETE_MOVIEAREA_SQL=
			"delete from movieArea where mId = ? and areaId = ?";
	@Override
	public void deleteMovieArea(int mId, int areaId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_MOVIEAREA_SQL);
			ps.setInt(1, mId);
			ps.setInt(2, areaId);
			ps.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
	}
	private static final String DELETE_MOVIEAREA_BY_MID_SQL=
			"delete from movieArea where mId = ?";	
	@Override
	public void deleteMovieAreaBymId(int mId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_MOVIEAREA_BY_MID_SQL);
			ps.setInt(1, mId);
			ps.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}	
	}
	private static final String DELETE_MOVIEAREA_BY_AREAID_SQL=
			"delete from movieArea where areaId = ?";	
	@Override
	public void deleteMovieAreaByareaId(int areaId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_MOVIEAREA_BY_AREAID_SQL);
			ps.setInt(1, areaId);
			ps.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}	
	}
	
	private static final String FIND_MOVIEAREA_BY_MID_SQL = 
			"select * from movieArea where mId = ?";
	@Override
	public List<MovieArea> findMovieAreaBymId(int mId) {
		List<MovieArea> movieareas = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIEAREA_BY_MID_SQL);
			ps.setInt(1, mId);
			rs = ps.executeQuery();
			while(rs.next()) {
				MovieArea moviearea = new MovieArea();
				moviearea.setAreaId(rs.getInt("areaId"));
				moviearea.setmId(rs.getInt("mId"));
				movieareas.add(moviearea);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
		
		return movieareas;
	}
	private static final String FIND_MOVIEAREA_BY_AREAID_SQL = 
			"select * from movieArea where areaId = ?";
	
	@Override
	public List<MovieArea> findMovieAreaByAreaId(int areaId) {
		List<MovieArea> movieareas = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIEAREA_BY_AREAID_SQL);
			ps.setInt(1, areaId);
			rs = ps.executeQuery();
			while(rs.next()) {
				MovieArea moviearea = new MovieArea();
				moviearea.setAreaId(rs.getInt("areaId"));
				moviearea.setmId(rs.getInt("mId"));
				movieareas.add(moviearea);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
		
		return movieareas;
	}
	private static final String FIND_MOVIEAREA_BY_ALL_SQL = 
			"select * from movieArea";
	
	@Override
	public List<MovieArea> findMovieAreaByAll() {
		List<MovieArea> movieareas = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIEAREA_BY_ALL_SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				MovieArea moviearea = new MovieArea();
				moviearea.setAreaId(rs.getInt("areaId"));
				moviearea.setmId(rs.getInt("mId"));
				movieareas.add(moviearea);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
		
		return movieareas;
	}

}
