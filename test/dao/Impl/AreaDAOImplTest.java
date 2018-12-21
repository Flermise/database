package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;

import entity.Area;
import junit.framework.Assert;

class AreaDAOImplTest {

	Area area = new Area();
	@Test
	void testInsertArea() {
		area.setAreaId(23);
		area.setAreaName("test1");
		new AreaDAOImpl().insertArea(area);
		System.out.println("test insertArea");
	}

	@Test
	void testUpdateArea() {
		area.setAreaId(23);
		area.setAreaName("update");
		new AreaDAOImpl().updateArea(area);
		System.out.println("test updateArea");
	}

	@Test
	void testDeleteArea() {
		new AreaDAOImpl().deleteArea(23);
		System.out.println("test deleteArea");
	}

	@Test
	void testFindAreaById() {
		 area = new AreaDAOImpl().findAreaById(23);
		 assertEquals("update", area.getAreaName());
	}

	@Test
	void testFindAreaByAll() {
		List<Area> list = new AreaDAOImpl().findAreaByAll();
		for(int i=0;i<list.size();i++)
		{
			area =list.get(i);
			System.out.println(area.toString());
		}
	}

}
