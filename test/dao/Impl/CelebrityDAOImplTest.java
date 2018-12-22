package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.Date;
import java.util.List;

import org.junit.jupiter.api.Test;

import entity.Celebrity;

class CelebrityDAOImplTest {
	Celebrity celeb = new Celebrity();
	@Test
	void testInsertCelebrity() {
		celeb.setAvatar("D:/");
		celeb.setBirthday(Date.valueOf("1966-01-01"));
		celeb.setBirthplace("日本,长野 ");
		celeb.setChName("测试");
		celeb.setConstellation("摩羯座");
		celeb.setEnName("test");
		celeb.setFamilyMember("test1,test2");
		celeb.setIMDb("nm00sss");
		celeb.setIntro("nothing");
		celeb.setOtherChName("呜呜呜/,啊啊啊/科科科");
		celeb.setOtherEnName("aaa/bbb/ccc");
		celeb.setSex("男");
		new CelebrityDAOImpl().insertCelebrity(celeb);
	}

	@Test
	void testUpdateCelebrity() {
		celeb.setCelebId(25);
		celeb.setAvatar("C:/");
		celeb.setBirthday(Date.valueOf("1966-01-01"));
		celeb.setBirthplace("中国,北京 ");
		celeb.setChName("update");
		celeb.setConstellation("羯座");
		celeb.setEnName("est");
		celeb.setFamilyMember("te2t1,tes12");
		celeb.setIMDb("nm11sss");
		celeb.setIntro("no11ing");
		celeb.setOtherChName("呜呜啊呜/,啊是啊啊/科的科科");
		celeb.setOtherEnName("aaca/bbwb/cqcc");
		celeb.setSex("男");
		new CelebrityDAOImpl().updateCelebrity(celeb);
	}

	@Test
	void testDeleteCelebrity() {
		new CelebrityDAOImpl().deleteCelebrity(25);
	}

	@Test
	void testFindCelebrityById() {
		celeb = new CelebrityDAOImpl().findCelebrityById(24);
		System.out.println(celeb.toString());
		assertEquals(24, celeb.getCelebId());
		assertEquals("玛琳·黛德丽 ", celeb.getChName());
		assertEquals("Marlene Dietrich", celeb.getEnName());
		assertEquals("玛莲·德烈治 / 玛琳·迪特里希 ", celeb.getOtherChName());
		assertEquals("Maria Magdalene Dietrich (本名) / Lili Marlene (昵称) ", celeb.getOtherEnName());
		assertEquals("D:/",celeb.getAvatar());
		assertEquals("女", celeb.getSex());
		assertEquals("摩羯座 ", celeb.getConstellation());
		assertEquals("德国,柏林 ", celeb.getBirthplace());
		assertEquals(Date.valueOf("1901-12-27"), celeb.getBirthday());
		assertEquals(Date.valueOf("1992-05-06"),celeb.getDeathday());
		assertEquals("Rudolf Sieber（夫） / Maria Riva（女）", celeb.getFamilyMember());
		assertEquals("nm0000017 ",celeb.getIMDb());
		assertEquals("玛琳·黛德丽，著名影星。父亲是一名皇家警察中尉。父亲的地位让玛琳和她的姐姐度过了一个舒适的童年。1911年，玛琳的父亲去世了，撇下母亲独自扶养两个女儿。父亲的去世给玛琳留下一个长久的阴影。"
				+ "玛琳的童年嗜好是音乐。她喜爱演奏小提琴，并且梦想成为柏林爱乐乐团的职业小提琴手。但后来她的手受了伤，童年梦想也成为泡影。", celeb.getIntro());
	}

	@Test
	void testFindCelebrityByAll() {
		List<Celebrity> list  = new CelebrityDAOImpl().findCelebrityByAll();
		assertEquals(24, list.size());
	}

}
