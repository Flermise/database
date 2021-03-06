package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import dao.DAO;

public class DAOBase implements DAO {
	private static ComboPooledDataSource ds = null;
	
	static {
		try {
			ds = new ComboPooledDataSource("SQLServer");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public  Connection getConnection() throws SQLException {
		try {
			return ds.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public  void release(Connection conn,PreparedStatement ps,ResultSet rs) {
		if(rs!=null) {
			try {
				rs.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		if(ps!=null) {
			try {
				ps.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		if(conn!=null) {
			try {
				conn.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
