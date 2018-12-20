package dao;

import java.util.List;

import entity.Area;

public interface AreaDAO extends DAO{     
	public void insertArea(Area area);
	public void updateArea(Area area);
	public void deleteArea(int areaId);
	public Area findAreaById(int areaId);
	public List<Area> findAreaByAll();
}	                                      
