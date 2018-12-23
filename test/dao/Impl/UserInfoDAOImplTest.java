package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.Date;
import java.util.List;

import org.junit.jupiter.api.Test;

import entity.UserInfo;

class UserInfoDAOImplTest {

	UserInfo userInfo = new UserInfo();
	UserInfoDAOImpl userInfoDI = new UserInfoDAOImpl();
	@Test
	void testInsertUserInfo() {
		userInfo.setuId(10);
		userInfo.setImage(null);
		userInfo.setIntro("大家好");
		userInfo.setRegistDate(Date.valueOf("2018-12-13"));
		userInfo.setCity("北京");
		userInfoDI.insertUserInfo(userInfo);
		
	}

	@Test
	void testUpdateUserInfo() {
		userInfo.setuId(10);
		userInfo.setImage(null);
		userInfo.setIntro("大家好");
		userInfo.setRegistDate(Date.valueOf("2018-12-13"));
		userInfo.setCity("北京");
		userInfoDI.updateUserInfo(userInfo);
	}

	@Test
	void testDeleteUserInfo() {
		userInfoDI.deleteUserInfo(10);
	}

	@Test
	void testFindUserInfoById() {
		userInfo=userInfoDI.findUserInfoById(10);
		assertEquals(10, userInfo.getuId());
		assertEquals(null, userInfo.getImage());
		assertEquals("大家好", userInfo.getIntro());
		assertEquals(Date.valueOf("2018-12-13"),userInfo.getRegistDate());
		assertEquals("北京", userInfo.getCity());	
	}

	@Test
	void testFindUserInfoByAll() {
		List<UserInfo> list = userInfoDI.findUserInfoByAll();
		assertEquals(10, list.size());
	}

}
