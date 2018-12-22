package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.Date;
import java.util.List;

import org.junit.jupiter.api.Test;

import entity.Movie;

class MovieDAOImplTest {
	
	Movie movie = new Movie();
	@Test
	void testInsertMovie() {
		movie.setChName("测试");
		movie.setOriginName("test");
		movie.setOtherName("insert");
		movie.setPoster("D:/");
		movie.setReleaseDate(Date.valueOf("1953-09-02"));
		movie.setTimeLength("111");
		movie.setPlot("abc ./ 啊喔阿");
		movie.setIMDb("tt048d1499");
		new MovieDAOImpl().insertMovie(movie);
	}

	@Test
	void testUpdateMovie() {
		movie.setmId(22);
		movie.setChName("测1试");
		movie.setOriginName("te1st");
		movie.setOtherName("ins1ert");
		movie.setPoster("D:/2");
		movie.setReleaseDate(Date.valueOf("1953-07-01"));
		movie.setTimeLength("121");
		movie.setPlot("abc .22/ 啊喔阿");
		movie.setIMDb("tt0422499");
		new MovieDAOImpl().updateMovie(movie);
	}

	@Test
	void testDeleteMovie() {
		new MovieDAOImpl().deleteMovie(22);
	}

	@Test
	void testFindMovieById() {
		movie = new MovieDAOImpl().findMovieById(21);
		assertEquals(21, movie.getmId());
		assertEquals("无间道", movie.getChName());
		assertEquals("無間道", movie.getOriginName());
		assertEquals("Infernal Affairs / Mou gaan dou", movie.getOtherName());
		assertEquals("D:/",movie.getPoster());
		assertEquals(Date.valueOf("2003-09-05"),movie.getReleaseDate());
		assertEquals("101", movie.getTimeLength());
		assertEquals("1991年，香港黑帮三合会会员刘健明（刘德华）听从老大韩琛（曾志伟）的吩咐，加入警察部队成为黑帮卧底，韩琛许诺刘健明会帮其在七年后晋升为见习督察。1992年，警察训练学校优秀学员陈永仁（梁朝伟）被上级要求深入到三合会做卧底，终极目标是成为韩琛身边的红人。2002年，两人都不负重望，也都身背重压，刘健明渐想成为一个真正的好人，陈永仁则盼着尽快回归警察身份。<br>重案组从陈永仁手中获悉一批毒品交易情报，锁紧目标人物韩琛，没料情报被刘健明泄出，双方行动均告失败。但此事将双方均有卧底的事实暴露，引发双方高层清除内鬼的决心。命运迥异又相似的刘健明和陈永仁开始在无间道的旅程中接受严峻考验。", movie.getPlot());
		assertEquals("tt0338564",movie.getIMDb());
		assertEquals("暂无", movie.getWebsite());
	}

	@Test
	void testFindMovieByAll() {
		List<Movie> list  = new MovieDAOImpl().findMovieByAll();
		assertEquals(21, list.size());
	}

}
