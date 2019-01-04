package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;

import entity.MovieTag;

class MovieTagDAOImplTest {

	MovieTag movieTag = new MovieTag();
	MovieTagDAOImpl movieTagDAOImpl = new MovieTagDAOImpl();
	@Test
	void testInsertMovieTag() {
		movieTag.setmId(28);
		movieTag.setTagId(507);
		movieTag.setWeight(1);
		movieTagDAOImpl.insertMovieTag(movieTag);
	}

	@Test
	void testUpdateMovieTag() {
		movieTag.setmId(28);
		movieTag.setTagId(507);
		movieTag.setWeight(2);
		movieTagDAOImpl.updateMovieTag(movieTag);
	}

	@Test
	void testDeleteMovieTag() {
		movieTagDAOImpl.deleteMovieTag(28, 507);
	}

	@Test
	void testDeleteMovieTagByMId() {
		movieTagDAOImpl.deleteMovieTagByMId(28);
	}

	@Test
	void testDeleteMovieTagByTagId() {
		movieTagDAOImpl.deleteMovieTagByTagId(507);
	}

	@Test
	void testFindMovieTag() {
		MovieTag movieTag  = movieTagDAOImpl.findMovieTag(28, 507);
		assertEquals(23, movieTag.getmId());
		assertEquals(507, movieTag.getTagId());
		assertEquals(2, movieTag.getWeight());
	}

	@Test
	void testFindMovieTagByMId() {
		List<MovieTag> list = movieTagDAOImpl.findMovieTagByMId(28);
		assertEquals(1, list.size());
	}

	@Test
	void testFindMovieTagByTagId() {
		List<MovieTag> list = movieTagDAOImpl.findMovieTagByTagId(507);
		assertEquals(1, list.size());
	}

	@Test
	void testFindMovieTagByAll() {
		List<MovieTag> list = movieTagDAOImpl.findMovieTagByAll();
		assertEquals(160, list.size());
	}
	
}
