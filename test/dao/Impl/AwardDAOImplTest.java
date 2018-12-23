package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.Date;
import java.util.List;

import org.junit.jupiter.api.Test;

import entity.Award;

class AwardDAOImplTest {

	Award award = new Award();
	AwardDAOImpl awdDI = new AwardDAOImpl();
	
	@Test
	void testInsertAward() {
		System.out.println("Test insertAward");
		award.setChName("第76届金球");
		award.setEnName("The 76th Golden Globes, USA");
		award.setAwdDate(Date.valueOf("2019-01-06"));
		award.setAwdCountry("美国,加州,洛杉矶");
		award.setWebsite("www.goldenglobes.org");
		awdDI.insertAward(award);
	}

	@Test
	void testUpdateAward() {
		System.out.println("Test updateAward");
		award.setAwdId(23);
		award.setChName("第76届金球奖");
		award.setAwdDate(Date.valueOf("2019-01-06"));
		award.setAwdCountry("美国,加州,洛杉矶");
		awdDI.updateAward(award);
	}

	@Test
	void testDeleteAward() {
		System.out.println("Test deleteAward");
		awdDI.deleteAward(23);
	}

	@Test
	void testFindAwardById() {
		System.out.println("Test FindSAwardById");
		Award awd = awdDI.findAwardById(23);
		assertEquals("第76届金球",awd.getChName());
		assertEquals("The 76th Golden Globes, USA",awd.getEnName());
		assertEquals(Date.valueOf("2019-01-06"),awd.getAwdDate());
		assertEquals("美国,加州,洛杉矶",awd.getAwdCountry());
		assertEquals("www.goldenglobes.org", awd.getWebsite());
	}

	@Test
	void testFindAwardByAll() {
		System.out.println("Test FindSAwardByAll");
		List<Award> list = awdDI.findAwardByAll();
		assertEquals(7,list.size());
	}
	
}
