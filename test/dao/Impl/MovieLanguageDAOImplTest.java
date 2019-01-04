package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;

import entity.MovieLanguage;

class MovieLanguageDAOImplTest {
	
	MovieLanguage ml = new MovieLanguage();
	@Test
	void testInsertMoiveLanguage() {
		ml.setmId(28);
		ml.setLanguageId(1);
		new MovieLanguageDAOImpl().insertMoiveLanguage(ml);
	}

	@Test
	void testDeleteMoiveLanguage() {
		new MovieLanguageDAOImpl().deleteMoiveLanguage(28, 1);
	}

	@Test
	void testDeleteMoiveLanguageBymId() {
		new MovieLanguageDAOImpl().deleteMoiveLanguageBymId(22);
	}

	@Test
	void testDeleteMoiveLanguageByLanguageId() {
		new MovieLanguageDAOImpl().deleteMoiveLanguageByLanguageId(16);
	}

	@Test
	void testFindMovieLanguageBymId() {
		List<MovieLanguage> mls = new ArrayList<>();
		mls = new MovieLanguageDAOImpl().findMovieLanguageBymId(18);
		assertEquals(3, mls.size());
	}

	@Test
	void testFindMovieLanguageByLanguageId() {
		List<MovieLanguage> mls = new ArrayList<>();
		mls = new MovieLanguageDAOImpl().findMovieLanguageByLanguageId(1);
		assertEquals(3, mls.size());
	}

	@Test
	void testFindMovieLanguageByAll() {
		List<MovieLanguage> mls = new ArrayList<>();
		mls = new MovieLanguageDAOImpl().findMovieLanguageByAll();
		assertEquals(40, mls.size());
	}

}
