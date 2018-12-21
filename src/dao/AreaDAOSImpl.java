package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.Area;

public class AreaDAOSImpl extends DAOBase implements AreaDAO{
	private  Connection conn = null;
	private  PreparedStatement ps = null;
	private  ResultSet rs = null;
	
	private static final String INSERT_AREA_SQL=
			"INSERT INTO area (areaId,areaName) VALUES(?, ?)";
	public void insertArea(Area area) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_AREA_SQL);
			ps.setInt(1, area.getAreaId());
			ps.setString(2, area.getAreaName());
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		
	}

	private static final String UPDATE_AREA_SQL=
			"UPDATE area SET areaName=? WHERE areaId = ?";
	public void updateArea(Area area) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(UPDATE_AREA_SQL);
			ps.setInt(1, area.getAreaId());
			ps.setString(2, area.getAreaName());
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String DELETE_AREA_SQL=
			"DELETE FROM area WHERE areaId = ?";
	public void deleteArea(int areaId)  {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_AREA_SQL);
			ps.setInt(1, areaId);
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String FIND_AREA_BY_ID_SQL=
			"SELECT * FROM area WHERE areaId = ?";
	public Area findAreaById(int areaId) {
		Area area = new Area();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_AREA_BY_ID_SQL);
			ps.setInt(1, areaId);
			rs = ps.executeQuery();
			if(rs.next()) {
				area.setAreaID(areaId);
				area.setAreaName(rs.getString("areaName"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return area;
	}

	private static final String FIND_AREA_BY_ALL_SQL=
			"SELECT * FROM area";
	public List<Area> findAreaByAll(){
		List<Area> areas = new ArrayList<Area>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_AREA_BY_ALL_SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				Area area = new Area();
				area.setAreaID(rs.getInt("areaId"));
				area.setAreaName(rs.getString("areaName"));
				areas.add(area);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return areas;
	}

}
