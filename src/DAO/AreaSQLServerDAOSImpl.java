package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import OBJ.Area;

public class AreaSQLServerDAOSImpl extends DAOBase implements AreaDAO{
	private static Connection conn = null;
	private static PreparedStatement pstmt = null;
	private static ResultSet rs = null;
	
	private static final String CREATE_AREA_SQL=
			"INSERT INTO areatable ( areaid, area ) VALUES(?, ?)";
	public void createArea(Area area) throws DAOException {
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(CREATE_AREA_SQL);
			pstmt.setInt(1, area.getAreaID());
			pstmt.setString(2, area.getAreaName());
			pstmt.executeUpdate();
			pstmt.close();
		}catch(SQLException ex) {
			throw new DAOException();
		}finally {
			try {
				conn.close();
			}catch(SQLException ex) {
				throw new DAOException();
			}
		}
		
	}

	private static final String UPDATE_AREA_SQL=
			"UPDATE area SET areaName=? WHERE areaId = ?";
	public void updateArea(Area area) throws DAOException {
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(UPDATE_AREA_SQL);
			pstmt.setInt(1, area.getAreaID());
			pstmt.setString(2, area.getAreaName());
			pstmt.executeUpdate();
			pstmt.close();
		}catch(SQLException ex) {
			throw new DAOException();
		}finally {
			try {
				conn.close();
			}catch(SQLException ex) {
				throw new DAOException();
			}
		}
	}

	private static final String DELETE_AREA_SQL=
			"DELETE FROM area WHERE areaId = ?";
	public void deleteArea(int areaId) throws DAOException {
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(DELETE_AREA_SQL);
			pstmt.setInt(1, areaId);
			pstmt.executeUpdate();
			pstmt.close();
		}catch(SQLException ex) {
			throw new DAOException();
		}finally {
			try {
				conn.close();
			}catch(SQLException ex) {
				throw new DAOException();
			}
		}
	}

	private static final String GET_AREA_SQL=
			"SELECT * FROM area WHERE areaId = ?";
	public Area getArea(int areaId) throws DAOException {
		Area area = new Area();
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(GET_AREA_SQL);
			pstmt.setInt(1, areaId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				area.setAreaID(areaId);
				area.setAreaName(rs.getString("areaName"));
			}
			rs.close();
			pstmt.close();
		}catch(SQLException ex) {
			throw new DAOException();
		}finally {
			try {
				conn.close();
			}catch(SQLException ex) {
				throw new DAOException();
			}
		}
		return area;
	}

	private static final String SEARCH_AREAS_SQL=
			"SELECT * FROM area";
	public List<Area> searchAreas() throws DAOException {
		List<Area> areas = new ArrayList<Area>();
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(SEARCH_AREAS_SQL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Area area = new Area();
				area.setAreaID(rs.getInt("areaId"));
				area.setAreaName(rs.getString("areaName"));
				areas.add(area);
			}
			rs.close();
			pstmt.close();
		}catch(SQLException ex) {
			throw new DAOException();
		}finally {
			try {
				conn.close();
			}catch(SQLException ex) {
				throw new DAOException();
			}
		}
		return areas;
	}

}
