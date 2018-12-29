package dao;

import java.util.List;
import entity.MovieArea;

public interface MovieAreaDAO extends DAO {
	public void insertMovieArea(MovieArea moviearea);
	
	public void deleteMovieArea(int mId,int areaId);
	public void deleteMovieAreaBymId(int mId);
	public void deleteMovieAreaByareaId(int areaId);
	
	
	public List<MovieArea> findMovieAreaBymId(int mId);
	public List<MovieArea> findMovieAreaByAreaId(int areaId);
	public List<MovieArea> findMovieAreaByAll();
}
