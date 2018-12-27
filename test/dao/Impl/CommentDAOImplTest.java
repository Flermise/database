package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;


import java.sql.Timestamp;
import java.util.List;

import org.junit.jupiter.api.Test;

import entity.Comment;

class CommentDAOImplTest {

	Comment cmt = new Comment();
	CommentDAOImpl cmtDI = new CommentDAOImpl();
	@Test
	void testInsertComment() {
		System.out.println("Test insertComment");
		cmt.setmId(22);
		cmt.setuId(11);
		cmt.setState("看过");
		cmt.setScore(5);
		cmt.setCmtTime(Timestamp.valueOf("2018-12-21 18:15:56.830"));
		cmt.setCmtContent("好看");
		cmt.setLikeNum(0);
		cmt.setIsVisible("Y");
		cmtDI.insertComment(cmt);
	}

	@Test
	void testUpdateComment() {
		cmt.setmId(22);
		cmt.setuId(11);
		cmt.setState("想看");
		cmt.setScore(5);
		cmt.setCmtTime(Timestamp.valueOf("2018-12-21 18:15:56.830"));
		cmt.setCmtContent("好看");
		cmt.setLikeNum(0);
		cmt.setIsVisible("Y");
		cmtDI.updateComment(cmt);
	}

	@Test
	void testDeleteComment() {
		cmtDI.deleteComment(11, 22);
	}

	@Test
	void testDeleteCommentByuId() {
		cmtDI.deleteCommentByuId(11);
	}

	@Test
	void testDeleteCommentBymId() {
		cmtDI.deleteCommentBymId(22);
	}

	@Test
	void testFindComment() {
		cmt=cmtDI.findComment(11, 22);
		assertEquals(11, cmt.getuId());
		assertEquals(22, cmt.getmId());
		assertEquals("想看", cmt.getState());
		assertEquals(5, cmt.getScore());
		assertEquals(Timestamp.valueOf("2018-12-21 18:15:56.830"), cmt.getCmtTime());
		assertEquals("好看", cmt.getCmtContent());
		assertEquals(0, cmt.getLikeNum());
		assertEquals("Y", cmt.getIsVisible());
	}

	@Test
	void testFindCommentByuId() {
		List<Comment> list =cmtDI.findCommentByuId(11);
		assertEquals(1, list.size());
	}

	@Test
	void testFindCommentBymId() {
		List<Comment> list = cmtDI.findCommentBymId(22);
		assertEquals(1, list.size());
	}

	@Test
	void testFindCommentByAll() {
		List<Comment> list = cmtDI.findCommentByAll();
		assertEquals(56, list.size());
	}

}
