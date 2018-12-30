package dao;

import java.util.List;

import entity.MovieType;

public interface MovieTypeDAO extends DAO {
	public void insertMovieType(MovieType mt);
	
	public void deleteMovieType(int mId,int typeId);
	public void deleteMovieTypeBymId(int mId);
	public void deleteMovieTypeByTypeId(int typeId);
	
	public List<MovieType> findMovieTypeBymId(int mId);
	public List<MovieType> findMovieTypeByTypeId(int typeId);
	public List<MovieType> findMovieTypeByAll();
}
