package DAO;

import java.util.List;

import OBJ.AreaTable;

public interface AreaTableDAO {
	public void createArea(AreaTable area) throws DAOException;
	public void updateArea(AreaTable area) throws DAOException;
	public void deleteArea(int areaId) throws DAOException;
	public AreaTable getArea(int areaId) throws DAOException;
	public List<AreaTable> searchAreas() throws DAOException;
}	
