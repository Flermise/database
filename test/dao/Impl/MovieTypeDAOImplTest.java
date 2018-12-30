package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;

import entity.MovieType;

class MovieTypeDAOImplTest {

	MovieType mt = new MovieType();
	@Test
	void testInsertMovieType() {
		mt.setmId(22);
		mt.setTypeId(1);
		new MovieTypeDAOImpl().insertMovieType(mt);
	}

	@Test
	void testDeleteMovieType() {
		new MovieTypeDAOImpl().deleteMovieType(22, 1);
	}

	@Test
	void testDeleteMovieTypeBymId() {
		new MovieTypeDAOImpl().deleteMovieTypeBymId(22);
	}

	@Test
	void testDeleteMovieTypeByTypeId() {
		new MovieTypeDAOImpl().deleteMovieTypeByTypeId(24);
	}

	@Test
	void testFindMovieTypeBymId() {
		List<MovieType> mts = new ArrayList<>();
		mts = new MovieTypeDAOImpl().findMovieTypeBymId(1);
		assertEquals(2, mts.size());
	}

	@Test
	void testFindMovieTypeByTypeId() {
		List<MovieType> mts = new ArrayList<>();
		mts = new MovieTypeDAOImpl().findMovieTypeByTypeId(1);
		assertEquals(18, mts.size());
	}

	@Test
	void testFindMovieTypeByAll() {
		List<MovieType> mts = new ArrayList<>();
		mts = new MovieTypeDAOImpl().findMovieTypeByAll();
		assertEquals(60, mts.size());
	}

}
