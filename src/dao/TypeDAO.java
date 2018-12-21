package dao;

import java.util.List;

import entity.Type;

public interface TypeDAO extends DAO{     
	public void insertType(Type type);
	public void updateType(Type type);
	public void deleteType(int typeId);
	public Type findTypeById(int typeId);
	public List<Type> findTypeByAll();
}	                                      
