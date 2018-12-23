package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;

import entity.CelebAwardInfo;

class CelebAwardInfoDAOImplTest {

	CelebAwardInfo celebAwdInfo = new CelebAwardInfo();
	CelebAwardInfoDAOImpl celebAwdInfoDAOImpl = new CelebAwardInfoDAOImpl();
	@Test
	void testInsertCelebAwardInfo() {
		celebAwdInfo.setCelebId(25);
		celebAwdInfo.setAwdInfoId(34);
		celebAwdInfo.setState("提名");
		celebAwdInfoDAOImpl.insertCelebAwardInfo(celebAwdInfo);
	}

	@Test
	void testUpdateCelebAwardInfo() {
		celebAwdInfo.setCelebId(25);
		celebAwdInfo.setAwdInfoId(34);
		celebAwdInfo.setState("获奖");
		celebAwdInfoDAOImpl.updateCelebAwardInfo(celebAwdInfo);
	}

	@Test
	void testDeleteCelebAwardInfo() {
		celebAwdInfoDAOImpl.deleteCelebAwardInfo(34, 25);
	}

	@Test
	void testDeleteCelebAwardInfoByAwdInfoId() {
		celebAwdInfoDAOImpl.deleteCelebAwardInfoByAwdInfoId(34);
	}

	@Test
	void testDeleteCelebAwardInfoByCelebId() {
		celebAwdInfoDAOImpl.deleteCelebAwardInfoByCelebId(25);
	}

	@Test
	void testFindCelebAwardInfo() {
		CelebAwardInfo celebAwdInfo  = celebAwdInfoDAOImpl.findCelebAwardInfo(34, 25);
		assertEquals(25, celebAwdInfo.getCelebId());
		assertEquals(34, celebAwdInfo.getAwdInfoId());
		assertEquals("获奖", celebAwdInfo.getState());
	}

	@Test
	void testFindCelebAwardInfoByAwdInfoId() {
		List<CelebAwardInfo> list = celebAwdInfoDAOImpl.findCelebAwardInfoByAwdInfoId(34);
		assertEquals(1, list.size());
	}

	@Test
	void testFindCelebAwardInfoByCelebId() {
		List<CelebAwardInfo> list = celebAwdInfoDAOImpl.findCelebAwardInfoByCelebId(25);
		assertEquals(1, list.size());
	}

	@Test
	void testFindCelebAwardInfoByAll() {
		List<CelebAwardInfo> list = celebAwdInfoDAOImpl.findCelebAwardInfoByAll();
		assertEquals(14, list.size());
	}

}
