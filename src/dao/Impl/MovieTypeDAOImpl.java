package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.MovieTypeDAO;
import entity.MovieType;

public class MovieTypeDAOImpl extends DAOBase implements MovieTypeDAO{
	private Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	
	private static final String INSERT_MOVIETYPE_SQL=
			"insert into movieType values(?,?)";
	@Override
	public void insertMovieType(MovieType mt) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_MOVIETYPE_SQL);
			ps.setInt(1, mt.getmId());
			ps.setInt(2, mt.getTypeId());
			ps.executeUpdate(); 
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
	}

	private static final String DELETE_MOVIETYPE_SQL =
			"delete from movieType where mId = ? and typeId = ?";
	@Override
	public void deleteMovieType(int mId, int typeId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_MOVIETYPE_SQL);
			ps.setInt(1, mId);
			ps.setInt(2, typeId);
			ps.executeUpdate(); 
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
	}
	
	private static final String DELETE_MOVIETYPE_BY_MID_SQL = 
			"delete from movieType where mId= ?";
	@Override
	public void deleteMovieTypeBymId(int mId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_MOVIETYPE_BY_MID_SQL);
			ps.setInt(1, mId);
			ps.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}	
	}
	
	private static final String DELETE_MOVIETYPE_BY_TYPEID_SQL = 
			"delete from movieType where typeId = ?";
	@Override
	public void deleteMovieTypeByTypeId(int typeId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_MOVIETYPE_BY_TYPEID_SQL);
			ps.setInt(1, typeId);
			ps.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}	
	}
	
	private static final String FIND_MOVIETYPE_BY_MID_SQL = 
			"select * from movieType where mId = ?";
	@Override
	public List<MovieType> findMovieTypeBymId(int mId) {
		List<MovieType> mts = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIETYPE_BY_MID_SQL);
			ps.setInt(1, mId);
			rs = ps.executeQuery();
			while(rs.next()) {
				MovieType mt =new MovieType();
				mt.setmId(rs.getInt("mId"));
				mt.setTypeId(rs.getInt("typeId"));
				mts.add(mt);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
		return mts;
	}
	
	private static final String FIND_MOVIETYPE_BY_TYPEID_SQL= 
			"select * from movieType where typeId = ?";
	@Override
	public List<MovieType> findMovieTypeByTypeId(int typeId) {
		List<MovieType> mts = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIETYPE_BY_TYPEID_SQL);
			ps.setInt(1, typeId);
			rs = ps.executeQuery();
			while(rs.next()) {
				MovieType mt =new MovieType();
				mt.setmId(rs.getInt("mId"));
				mt.setTypeId(rs.getInt("typeId"));
				mts.add(mt);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
		return mts;
	}
	
	
	private static final String FIND_MOVIETYPE_BY_ALL_SQL = 
			"select * from movieType";
	@Override
	public List<MovieType> findMovieTypeByAll() {
		List<MovieType> mts = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIETYPE_BY_ALL_SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				MovieType mt =new MovieType();
				mt.setmId(rs.getInt("mId"));
				mt.setTypeId(rs.getInt("typeId"));
				mts.add(mt);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
		return mts;
	}

}
