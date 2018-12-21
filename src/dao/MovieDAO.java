package dao;

import java.util.List;

import entity.Movie;

public interface MovieDAO extends DAO{     
	public void insertMovie(Movie movie);
	public void updateMovie(Movie movie);
	public void deleteMovie(int mId);
	public Movie findMovieById(int mId);
	public List<Movie> findMovieByAll();
}	                                      

