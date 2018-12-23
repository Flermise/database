package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;

import entity.MovieRole;

class MovieRoleDAOImplTest {

	MovieRole mr = new MovieRole();
	MovieRoleDAOImpl mrDI = new MovieRoleDAOImpl();
	@Test
	void testInsertMovieRole() {
		System.out.println("Test insertMovieRole");
		mr.setCelebId(26);
		mr.setmId(23);
		mr.setProfName("导演");
		mr.setRoleName("主角");
		mrDI.insertMovieRole(mr);
	}

	@Test
	void testUpdateMovieRole() {
		mr.setMrId(34);
		mr.setCelebId(26);
		mr.setmId(23);
		mr.setProfName("导演");
		mr.setRoleName("男配角");
		mrDI.updateMovieRole(mr);
	}

	@Test
	void testDeleteMovieRole() {
		mrDI.deleteMovieRole(34);
	}

	@Test
	void testFindMovieRoleById() {
		mr = mrDI.findMovieRoleById(34);
		assertEquals(23, mr.getmId());
		assertEquals(26, mr.getCelebId());
		assertEquals("导演", mr.getProfName());
		assertEquals("男配角", mr.getRoleName());
	}

	@Test
	void testFindMovieRoleByAll() {
		List<MovieRole> list = mrDI.findMovieRoleByAll();
		assertEquals(34, list.size());
	}

}
