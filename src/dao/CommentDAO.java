package dao;

import java.util.List;

import entity.Comment;

public interface CommentDAO extends DAO{
	public void insertComment(Comment cmt);
	public void updateComment(Comment cmt);
	
	public void deleteComment(int uId,int mId);
	public void deleteCommentByuId(int uId);
	public void deleteCommentBymId(int mId);
	
	public Comment findComment(int uId,int mId);
	public List<Comment> findCommentByuId(int uId);
	public List<Comment> findCommentBymId(int mId);
	public List<Comment> findCommentByAll();
}
