package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;

import entity.MovieAwardInfo;

class MovieAwardInfoDAOImplTest {

	MovieAwardInfo movieAwdInfo = new MovieAwardInfo();
	MovieAwardInfoDAOImpl movieAwdInfoDAOImpl = new MovieAwardInfoDAOImpl();
	@Test
	void testInsertMovieAwardInfo() {
		movieAwdInfo.setmId(23);
		movieAwdInfo.setAwdInfoId(36);
		movieAwdInfo.setState("提名");
		movieAwdInfoDAOImpl.insertMovieAwardInfo(movieAwdInfo);
	}

	@Test
	void testUpdateMovieAwardInfo() {
		movieAwdInfo.setmId(23);
		movieAwdInfo.setAwdInfoId(35);
		movieAwdInfo.setState("获奖");
		movieAwdInfoDAOImpl.updateMovieAwardInfo(movieAwdInfo);
	}

	@Test
	void testDeleteMovieAwardInfo() {
		movieAwdInfoDAOImpl.deleteMovieAwardInfo(35, 23);
	}

	@Test
	void testDeleteMovieAwardInfoByAwdInfoId() {
		movieAwdInfoDAOImpl.deleteMovieAwardInfoByAwdInfoId(35);
	}

	@Test
	void testDeleteMovieAwardInfoByCelebId() {
		movieAwdInfoDAOImpl.deleteMovieAwardInfoBymId(23);
	}

	@Test
	void testFindMovieAwardInfo() {
		MovieAwardInfo movieAwdInfo  = movieAwdInfoDAOImpl.findMovieAwardInfo(35, 23);
		assertEquals("获奖", movieAwdInfo.getState());
	}

	@Test
	void testFindMovieAwardInfoByAwdInfoId() {
		List<MovieAwardInfo> list = movieAwdInfoDAOImpl.findMovieAwardInfoByAwdInfoId(35);
		assertEquals(1, list.size());
	}

	@Test
	void testFindMovieAwardInfoByCelebId() {
		List<MovieAwardInfo> list = movieAwdInfoDAOImpl.findMovieAwardInfoBymId(23);
		assertEquals(1, list.size());
	}

	@Test
	void testFindMovieAwardInfoByAll() {
		List<MovieAwardInfo> list = movieAwdInfoDAOImpl.findMovieAwardInfoByAll();
		assertEquals(25, list.size());
	}

}
