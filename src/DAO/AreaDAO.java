package DAO;

import java.util.List;

import OBJ.Area;

public interface AreaDAO {
	public void createArea(Area area) throws DAOException;
	public void updateArea(Area area) throws DAOException;
	public void deleteArea(int areaId) throws DAOException;
	public Area getArea(int areaId) throws DAOException;
	public List<Area> searchAreas() throws DAOException;
}	
