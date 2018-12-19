package DAO;

import java.util.List;

import OBJ.AreaTable;

public class AreaTableDAOSImpl extends DAOBase implements AreaTableDAO{

	private static final String CREATE_AREATABLE_SQL=
			"INSERT INTO areatable ( areaid, area ) VALUES(?, ?)";
	@Override
	public void createArea(AreaTable area) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateArea(AreaTable area) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteArea(int areaId) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public AreaTable getArea(int areaId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<AreaTable> searchAreas() throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

}
