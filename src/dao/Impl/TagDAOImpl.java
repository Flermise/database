package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.DAOBase;
import dao.TagDAO;
import entity.Tag;

public class TagDAOImpl extends DAOBase implements TagDAO{
	private  Connection conn = null;
	private  PreparedStatement ps = null;
	private  ResultSet rs = null;
	
	private static final String INSERT_TAG_SQL=
			"INSERT INTO tag VALUES(?, ?)";
	public void insertTag(Tag tag) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_TAG_SQL);
			ps.setInt(1, tag.getTagId());
			ps.setString(2, tag.getTagName());
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		
	}

	private static final String UPDATE_TAG_SQL=
			"UPDATE tag SET tagName=? WHERE tagId = ?";
	public void updateTag(Tag tag) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(UPDATE_TAG_SQL);
			ps.setString(1, tag.getTagName());
			ps.setInt(2, tag.getTagId());
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String DELETE_TAG_SQL=
			"DELETE FROM tag WHERE tagId = ?";
	public void deleteTag(int tagId)  {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_TAG_SQL);
			ps.setInt(1, tagId);
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String FIND_TAG_BY_ID_SQL=
			"SELECT * FROM tag WHERE tagId = ?";
	public Tag findTagById(int tagId) {
		Tag tag = new Tag();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_TAG_BY_ID_SQL);
			ps.setInt(1, tagId);
			rs = ps.executeQuery();
			if(rs.next()) {
				tag.setTagId(tagId);
				tag.setTagName(rs.getString("tagName"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return tag;
	}

	private static final String FIND_TAG_BY_ALL_SQL=
			"SELECT * FROM tag";
	public List<Tag> findTagByAll(){
		List<Tag> tags = new ArrayList<Tag>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_TAG_BY_ALL_SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				Tag tag = new Tag();
				tag.setTagId(rs.getInt("tagId"));
				tag.setTagName(rs.getString("tagName"));
				tags.add(tag);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return tags;
	}
}
