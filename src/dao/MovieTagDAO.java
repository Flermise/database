package dao;

import java.util.List;

import entity.MovieTag;
import entity.Tag;

public interface MovieTagDAO extends DAO{     
	public void insertMovieTag(MovieTag movieTag);
	public void updateMovieTag(MovieTag movieTag);
	public void deleteMovieTag(int mId, int tagId);
	public MovieTag findMovieTagById(int mId, int tagId);
	public List<MovieTag> findMovieTagByAll();
}	                                      
