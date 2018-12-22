package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;

import entity.UserTable;

class UserTableDAOImplTest {
	
	UserTable usertable = new UserTable();
	@Test
	void testInsertUser() {
		usertable.setUserName("用户10");
		usertable.setPassword("123");
		usertable.setPhoneNumber("11012341234");
		usertable.setEmail("11012341234@163.com");
		new UserTableDAOImpl().insertUser(usertable);
	}

	@Test
	void testUpdateUser() {
		usertable.setuId(10);
		usertable.setUserName("用户10");
		usertable.setPassword("123");
		usertable.setPhoneNumber("11012341234");
		usertable.setEmail("11012341234@163.com");
		new UserTableDAOImpl().updateUser(usertable);
	}

	@Test
	void testDeleteUser() {
		new UserTableDAOImpl().deleteUser(11);
	}

	@Test
	void testFindUserById() {
		usertable = new UserTableDAOImpl().findUserById(9);
		assertEquals(9, usertable.getuId());
		assertEquals("用户9",usertable.getUserName());
		assertEquals("111", usertable.getPassword());
		assertEquals("10912341234", usertable.getPhoneNumber());
		assertEquals("10912341234@163.com", usertable.getEmail());
		
	}

	@Test
	void testFindUserByAll() {
		List<UserTable> list = new UserTableDAOImpl().findUserByAll();
		assertEquals(9, list.size());
	}

}
