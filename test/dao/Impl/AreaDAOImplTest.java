package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;

import entity.Area;

class AreaDAOImplTest {

	Area area = new Area();
	@Test
	void testInsertArea() {
		area.setAreaName("test");
		new AreaDAOImpl().insertArea(area);
		
	}

	@Test
	void testUpdateArea() {
		area.setAreaId(23);
		area.setAreaName("update");
		new AreaDAOImpl().updateArea(area);
		
	}

	@Test
	void testDeleteArea() {
		new AreaDAOImpl().deleteArea(23);
	}

	@Test
	void testFindAreaById() {
		 area = new AreaDAOImpl().findAreaById(22);
		 assertEquals(22, area.getAreaId());
		 assertEquals("奥地利", area.getAreaName());
	}

	@Test
	void testFindAreaByAll() {
		List<Area> list = new AreaDAOImpl().findAreaByAll();
		assertEquals(22, list.size());
	}

}
