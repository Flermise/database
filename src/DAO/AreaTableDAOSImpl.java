package DAO;

import java.util.List;

import OBJ.Area;

public class AreaTableDAOSImpl extends DAOBase implements AreaTableDAO{

	private static final String CREATE_AREATABLE_SQL=
			"INSERT INTO areatable ( areaid, area ) VALUES(?, ?)";
	@Override
	public void createArea(Area area) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateArea(Area area) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteArea(int areaId) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Area getArea(int areaId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Area> searchAreas() throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

}
