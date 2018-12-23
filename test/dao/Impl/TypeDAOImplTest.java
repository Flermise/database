package dao.Impl;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;

import entity.Type;

class TypeDAOImplTest {

	Type type =new Type();
	TypeDAOImpl typeDI = new TypeDAOImpl();
	@Test
	void testInsertType() {
		System.out.println("Test insertType");
		type.setTypeName("戏");
		typeDI.insertType(type);
	}

	@Test
	void testUpdateType() {
		System.out.println("Test updateType");
		type.setTypeId(25);
		type.setTypeName("戏剧");
		typeDI.updateType(type);
	}

	@Test
	void testDeleteType() {
		System.out.println("Test deleteType");
		typeDI.deleteType(25);
	}

	@Test
	void testFindTypeById() {
		System.out.println("Test findTypeById");
		type=typeDI.findTypeById(25);
		assertEquals(25,type.getTypeId());
		assertEquals("戏剧", type.getTypeName());
	}

	@Test
	void testFindTypeByAll() {
		List<Type> list = typeDI.findTypeByAll();
		assertEquals(24, list.size());
	}

}
