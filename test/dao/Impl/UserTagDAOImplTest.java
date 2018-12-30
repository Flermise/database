package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;

import entity.UserTag;

class UserTagDAOImplTest {
	
	UserTag ut = new UserTag();
	@Test
	void testInsertUserTag() {
		ut.setuId(10);
		ut.setTagId(1);
		new UserTagDAOImpl().insertUserTag(ut);
	}

	@Test
	void testDeleteUserTag() {
		new UserTagDAOImpl().deleteUserTag(10, 1);
	}

	@Test
	void testDeleteUserTagByuId() {
		new UserTagDAOImpl().deleteUserTagByuId(10);
	}

	@Test
	void testDeleteUserTagByTagId() {
		new UserTagDAOImpl().deleteUserTagByTagId(505);
	}

	@Test
	void testFindUserTagByuId() {
		List<UserTag> uts = new ArrayList<>();
		uts = new UserTagDAOImpl().findUserTagByuId(1);
		assertEquals(4, uts.size());
	}

	@Test
	void testFindUserTagByTagId() {
		List<UserTag> uts = new ArrayList<>();
		uts = new UserTagDAOImpl().findUserTagByTagId(1);
		assertEquals(2, uts.size());
	}

	@Test
	void testFindUserTagByAll() {
		List<UserTag> uts = new ArrayList<>();
		uts = new UserTagDAOImpl().findUserTagByAll();
		assertEquals(27, uts.size());
	}

}
