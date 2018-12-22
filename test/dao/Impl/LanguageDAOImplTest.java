package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;

import entity.Language;

class LanguageDAOImplTest {

	Language lan = new Language();
	@Test
	void testInsertLanguage() {
		lan.setLanguageName("测试test");
		new LanguageDAOImpl().insertLanguage(lan);
	}

	@Test
	void testUpdateLanguage() {
		lan.setLanguageId(17);
		lan.setLanguageName("测试update");
		new LanguageDAOImpl().updateLanguage(lan);
	}

	@Test
	void testDeleteLanguage() {
		new LanguageDAOImpl().deleteLanguage(16);
	}

	@Test
	void testFindLanguageById() {
		lan = new LanguageDAOImpl().findLanguageById(15);
		assertEquals(15, lan.getLanguageId());
		assertEquals("手语", lan.getLanguageName());
		System.out.println(lan.toString());
	}

	@Test
	void testFindLanguageByAll() {
		List<Language> list = new LanguageDAOImpl().findLanguageByAll();
		assertEquals(15, list.size());
	}

}
