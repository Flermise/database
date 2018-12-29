package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;

import entity.MovieArea;

class MovieAreaDAOImplTest {
	
	MovieArea ma = new MovieArea();
	@Test
	void testInsertMovieArea() {
		ma.setAreaId(11);
		ma.setmId(22);
		new	MovieAreaDAOImpl().insertMovieArea(ma);
	}

	@Test
	void testDeleteMovieArea() {
		new MovieAreaDAOImpl().deleteMovieArea(11, 10);
	}

	@Test
	void testDeleteMovieAreaBymId() {
		new MovieAreaDAOImpl().deleteMovieAreaBymId(22);
	}

	@Test
	void testDeleteMovieAreaByareaId() {
		new MovieAreaDAOImpl().deleteMovieAreaByareaId(23);
	}

	@Test
	void testFindMovieAreaBymId() {
		List<MovieArea> mas = new ArrayList<>();
		mas  = new MovieAreaDAOImpl().findMovieAreaBymId(11);
		assertEquals(1, mas.size());
	}

	@Test
	void testFindMovieAreaByAreaId() {
		List<MovieArea> mas = new ArrayList<>();
		mas = new MovieAreaDAOImpl().findMovieAreaByAreaId(2);
		assertEquals(8, mas.size());
	}

	@Test
	void testFindMovieAreaByAll() {
		List<MovieArea> mas = new ArrayList<>();
		mas = new MovieAreaDAOImpl().findMovieAreaByAll();
		assertEquals(22, mas.size());
	}

}
