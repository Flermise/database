package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.TypeDAO;
import dao.DAOBase;
import entity.Type;

public class TypeDAOImpl extends DAOBase implements TypeDAO{
	private  Connection conn = null;
	private  PreparedStatement ps = null;
	private  ResultSet rs = null;
	
	private static final String INSERT_TYPE_SQL=
			"INSERT INTO type VALUES(?, ?)";
	public void insertType(Type type) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_TYPE_SQL);
			ps.setInt(1, type.getTypeId());
			ps.setString(2, type.getTypeName());
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		
	}

	private static final String UPDATE_TYPE_SQL=
			"UPDATE type SET typeName=? WHERE typeId = ?";
	public void updateType(Type type) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(UPDATE_TYPE_SQL);
			ps.setString(1, type.getTypeName());
			ps.setInt(2, type.getTypeId());
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String DELETE_TYPE_SQL=
			"DELETE FROM type WHERE typeId = ?";
	public void deleteType(int typeId)  {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_TYPE_SQL);
			ps.setInt(1, typeId);
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String FIND_TYPE_BY_ID_SQL=
			"SELECT * FROM type WHERE typeId = ?";
	public Type findTypeById(int typeId) {
		Type type = new Type();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_TYPE_BY_ID_SQL);
			ps.setInt(1, typeId);
			rs = ps.executeQuery();
			if(rs.next()) {
				type.setTypeId(typeId);
				type.setTypeName(rs.getString("typeName"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return type;
	}

	private static final String FIND_TYPE_BY_ALL_SQL=
			"SELECT * FROM type";
	public List<Type> findTypeByAll(){
		List<Type> types = new ArrayList<Type>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_TYPE_BY_ALL_SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				Type type = new Type();
				type.setTypeId(rs.getInt("typeId"));
				type.setTypeName(rs.getString("typeName"));
				types.add(type);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return types;
	}
}
