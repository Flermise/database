package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;

import entity.AwardInfo;

class AwardInfoDAOImplTest {
	
	
	AwardInfo awdInfo = new AwardInfo();
	@Test
	void testInsertAwardInfo() {
		awdInfo.setAwdId(6);
		awdInfo.setAwdInfoName("最佳女主角");
		new AwardInfoDAOImpl().insertAwardInfo(awdInfo);
	}

	@Test
	void testUpdateAwardInfo() {
		awdInfo.setAwdInfoId(35);
		awdInfo.setAwdId(6);
		awdInfo.setAwdInfoName("update");
		new AwardInfoDAOImpl().updateAwardInfo(awdInfo);
	}

	@Test
	void testDeleteAwardInfo() {
		new AwardInfoDAOImpl().deleteAwardInfo(35);
	}

	@Test
	void testFindAwardInfoById() {
		awdInfo= new AwardInfoDAOImpl().findAwardInfoById(33);
		System.out.println(awdInfo.toString());
		assertEquals(33, awdInfo.getAwdInfoId());
		assertEquals(6, awdInfo.getAwdId());
		assertEquals("最佳男主角", awdInfo.getAwdInfoName());
		
	}

	@Test
	void testFindAwardInfoByAll() {
	 List<AwardInfo> list = new AwardInfoDAOImpl().findAwardInfoByAll();
	 assertEquals(32, list.size());
	}

}

