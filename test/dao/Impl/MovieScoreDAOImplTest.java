package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;

import entity.MovieScore;

class MovieScoreDAOImplTest {

	MovieScore ms = new MovieScore();
	@Test
	void testInsertMovieScore() {
		ms.setmId(23);
		ms.setTotalScore((float) 9.1);
		ms.setTotalNumber(554790);
		ms.setFiveStar(343970);
		ms.setFourStar(175868);
		ms.setThreeStar(33287);
		ms.setTwoStar(1109);
		ms.setOneStar(555);
		new MovieScoreDAOImpl().insertMovieScore(ms);
	}

	@Test
	void testUpdateMovieScore() {
		ms.setmId(23);
		ms.setTotalScore(9.1f);
		ms.setTotalNumber(524790);
		ms.setFiveStar(343270);
		ms.setFourStar(175828);
		ms.setThreeStar(33227);
		ms.setTwoStar(1129);
		ms.setOneStar(525);
		new MovieScoreDAOImpl().updateMovieScore(ms);
	}

	@Test
	void testDeleteMovieScore() {
		new MovieScoreDAOImpl().deleteMovieScore(23);
	}

	@Test
	void testFindMovieScoreById() {
		ms = new MovieScoreDAOImpl().findMovieScoreById(21);
		assertEquals(21, ms.getmId());
		assertEquals(554790, ms.getTotalNumber());
		assertEquals(343970, ms.getFiveStar());
		assertEquals(175868, ms.getFourStar());
		assertEquals(33287, ms.getThreeStar());
		assertEquals(1109, ms.getTwoStar());
		assertEquals(555, ms.getOneStar());
	}

	@Test
	void testFindMovieScoreByAll() {
		List<MovieScore> list = new MovieScoreDAOImpl().findMovieScoreByAll();
		for(MovieScore item : list) {
			System.out.println(item);
		}
	}

}
