package dao;

import java.util.List;

import entity.MovieTag;

public interface MovieTagDAO extends DAO{     
	public void insertMovieTag(MovieTag movieTag);
	public void updateMovieTag(MovieTag movieTag);
	
	public void deleteMovieTag(int mId, int tagId);
	public void deleteMovieTagByMId(int mId);
	public void deleteMovieTagByTagId(int tagId);
	
	public MovieTag findMovieTag(int mId, int tagId);
	public MovieTag findMovieTagByMId(int mId);
	public MovieTag findMovieTagByTagId(int tagId);
	
	public List<MovieTag> findMovieTagByAll();
}	                                      
