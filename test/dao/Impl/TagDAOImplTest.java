package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;

import entity.Tag;

class TagDAOImplTest {

	Tag tag = new Tag();
	@Test
	void testInsertTag() {
		tag.setTagName("测试test");
		new TagDAOImpl().insertTag(tag);
	}

	@Test
	void testUpdateTag() {
		tag.setTagId(508);
		tag.setTagName("测试Update");
		new TagDAOImpl().updateTag(tag);
	}

	@Test
	void testDeleteTag() {
		new TagDAOImpl().deleteTag(508);
	}

	@Test
	void testFindTagById() {
		tag = new TagDAOImpl().findTagById(507);
		assertEquals(507, tag.getTagId());
		assertEquals("辛德勒的名单", tag.getTagName());
	}

	@Test
	void testFindTagByAll() {
		List<Tag> list = new TagDAOImpl().findTagByAll();
		assertEquals(83, list.size());
	}

}
