package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.CommentDAO;
import entity.Comment;

public class CommentDAOImpl extends DAOBase implements CommentDAO{
	private Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	
	private static final String INSERT_COMMENT_SQL= 
			"insert into comment values(?,?,?,?,?,?,?,?)";
	@Override
	public void insertComment(Comment cmt) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_COMMENT_SQL);
			ps.setInt(1, cmt.getuId());
			ps.setInt(2, cmt.getmId());
			ps.setString(3, cmt.getState());
			ps.setFloat(4, cmt.getScore());
			ps.setTimestamp(5, cmt.getCmtTime());
			ps.setString(6, cmt.getCmtContent());
			ps.setInt(7, cmt.getLikeNum());
			ps.setString(8, cmt.getIsVisible()); 
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}
	
	private static final String UPDATE_COMMENT_SQL = 
			"update comment set state = ?,score = ?,cmtTime=?,cmtContent=?,"
			+ "likeNum=?,isVisible=? where uId= ? and mId = ?";
	@Override
	public void updateComment(Comment cmt) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(UPDATE_COMMENT_SQL);
			ps.setString(1, cmt.getState());
			ps.setFloat(2, cmt.getScore());
			ps.setTimestamp(3,cmt.getCmtTime());
			ps.setString(4, cmt.getCmtContent());
			ps.setInt(5, cmt.getLikeNum());
			ps.setString(6, cmt.getIsVisible());
			ps.setInt(7, cmt.getuId());
			ps.setInt(8, cmt.getmId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		
	}
	private static final String DELETE_COMMENT_SQL=
			"delete from comment where uId = ? and mId = ?";
	@Override
	public void deleteComment(int uId, int mId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_COMMENT_SQL);
			ps.setInt(1, uId);
			ps.setInt(2, mId);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
	}
	
	private static final String DELETE_COMMENT_BY_UID_SQL=
			"delete from comment where uId = ?";
	@Override
	public void deleteCommentByuId(int uId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_COMMENT_BY_UID_SQL);
			ps.setInt(1, uId);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
	}

	private static final String DELETE_COMMENT_BY_MID_SQL=
			"delete from comment where mId = ?";
	@Override
	public void deleteCommentBymId(int mId) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_COMMENT_BY_MID_SQL);
			ps.setInt(1, mId);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			release(conn, ps, rs);
		}
		
	}
	
	private static final String FIND_COMMENT_SQL=
			"select * from comment where uId=? and mId = ?";
	@Override
	public Comment findComment(int uId, int mId) {
		Comment cmt = new Comment();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_COMMENT_SQL);
			ps.setInt(1, uId);
			ps.setInt(2, mId);
			rs = ps.executeQuery();
			if(rs.next()) {
				cmt.setuId(uId);
				cmt.setmId(mId);
				cmt.setState(rs.getString("state"));
				cmt.setScore(rs.getFloat("score"));
				cmt.setCmtTime(rs.getTimestamp("cmtTime"));
				cmt.setCmtContent(rs.getString("cmtContent"));
				cmt.setLikeNum(rs.getInt("likeNum"));
				cmt.setIsVisible(rs.getString("isVisible"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return cmt;
	}
	
	private static final String FIND_COMMENT_BY_UID_SQL = 
			"select * from comment where uId = ?";
	@Override
	public List<Comment> findCommentByuId(int uId) {
		List<Comment> cmts = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_COMMENT_BY_UID_SQL);
			ps.setInt(1, uId);
			rs = ps.executeQuery();
			while(rs.next()) {
				Comment cmt = new Comment();
				cmt.setuId(uId);
				cmt.setmId(rs.getInt("mId"));
				cmt.setState(rs.getString("state"));
				cmt.setScore(rs.getFloat("score"));
				cmt.setCmtTime(rs.getTimestamp("cmtTime"));
				cmt.setCmtContent(rs.getString("cmtContent"));
				cmt.setLikeNum(rs.getInt("likeNum"));
				cmt.setIsVisible(rs.getString("isVisible"));
				cmts.add(cmt);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return cmts;
	}
	
	private static final String FIND_COMMENT_BY_MID_SQL = 
			"select * from comment where mId = ?";
	@Override
	public List<Comment> findCommentBymId(int mId) {
		List<Comment> cmts = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_COMMENT_BY_MID_SQL);
			ps.setInt(1, mId);
			rs = ps.executeQuery();
			while(rs.next()) {
				Comment cmt = new Comment();
				cmt.setuId(rs.getInt("uId"));
				cmt.setmId(mId);
				cmt.setState(rs.getString("state"));
				cmt.setScore(rs.getFloat("score"));
				cmt.setCmtTime(rs.getTimestamp("cmtTime"));
				cmt.setCmtContent(rs.getString("cmtContent"));
				cmt.setLikeNum(rs.getInt("likeNum"));
				cmt.setIsVisible(rs.getString("isVisible"));
				cmts.add(cmt);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return cmts;
	}
	
	private static final String FIND_COMMENT_BY_ALL_SQL = 
			"select * from comment";
	@Override
	public List<Comment> findCommentByAll() {
		List<Comment> cmts = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_COMMENT_BY_ALL_SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				Comment cmt = new Comment();
				cmt.setuId(rs.getInt("uId"));
				cmt.setmId(rs.getInt("mId"));
				cmt.setState(rs.getString("state"));
				cmt.setScore(rs.getFloat("score"));
				cmt.setCmtTime(rs.getTimestamp("cmtTime"));
				cmt.setCmtContent(rs.getString("cmtContent"));
				cmt.setLikeNum(rs.getInt("likeNum"));
				cmt.setIsVisible(rs.getString("isVisible"));
				cmts.add(cmt);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return cmts;
	}

}
