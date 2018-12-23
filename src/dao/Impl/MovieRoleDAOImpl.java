package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.DAOBase;
import dao.MovieRoleDAO;
import entity.MovieRole;

public class MovieRoleDAOImpl  extends DAOBase implements MovieRoleDAO{
	private  Connection conn = null;
	private  PreparedStatement ps = null;
	private  ResultSet rs = null;
	
	private static final String INSERT_MOVIEROLE_SQL=
			"INSERT INTO movieRole VALUES(?, ?, ?, ?)";
	public void insertMovieRole(MovieRole movieRole) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_MOVIEROLE_SQL);
			ps.setInt(1, movieRole.getCelebId());
			ps.setInt(2, movieRole.getmId());
			ps.setString(3, movieRole.getProfName());
			ps.setString(4, movieRole.getRoleName());
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		
	}

	private static final String UPDATE_MOVIEROLE_SQL=
			"UPDATE movieRole SET celebId=?, mId=?, profName=?,roleName=? WHERE mrId = ?";
	public void updateMovieRole(MovieRole movieRole) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(UPDATE_MOVIEROLE_SQL);
			ps.setInt(1, movieRole.getCelebId());
			ps.setInt(2, movieRole.getmId());
			ps.setString(3, movieRole.getProfName());
			ps.setString(4, movieRole.getRoleName());
			ps.setInt(5, movieRole.getMrId());
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String DELETE_MOVIEROLE_SQL=
			"DELETE FROM movieRole WHERE mrId = ?";
	public void deleteMovieRole(int mrId)  {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_MOVIEROLE_SQL);
			ps.setInt(1, mrId);
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String FIND_MOVIEROLE_BY_ID_SQL=
			"SELECT * FROM movieRole WHERE mrId = ?";
	public MovieRole findMovieRoleById(int mrId) {
		MovieRole movieRole = new MovieRole();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIEROLE_BY_ID_SQL);
			ps.setInt(1, mrId);
			rs = ps.executeQuery();
			if(rs.next()) {
				movieRole.setMrId(mrId);
				movieRole.setCelebId(rs.getInt("celebId"));
				movieRole.setmId(rs.getInt("mId"));
				movieRole.setProfName(rs.getString("profName"));
				movieRole.setRoleName(rs.getString("roleName"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return movieRole;
	}

	private static final String FIND_MOVIEROLE_BY_ALL_SQL=
			"SELECT * FROM movieRole";
	public List<MovieRole> findMovieRoleByAll(){
		List<MovieRole> movieRoles = new ArrayList<MovieRole>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_MOVIEROLE_BY_ALL_SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				MovieRole movieRole = new MovieRole();
				movieRole.setMrId(rs.getInt("mrId"));
				movieRole.setCelebId(rs.getInt("celebId"));
				movieRole.setmId(rs.getInt("mId"));
				movieRole.setProfName(rs.getString("profName"));
				movieRole.setRoleName(rs.getString("roleName"));
				movieRoles.add(movieRole);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return movieRoles;
	}
}
