package dao;

import java.util.List;

import entity.MovieScore;

public interface MovieScoreDAO extends DAO{     
	public void insertMovieScore(MovieScore movieScore);
	public void updateMovieScore(MovieScore movieScore);
	public void deleteMovieScore(int mId);
	public MovieScore findMovieScoreById(int mId);
	public List<MovieScore> findMovieScoreByAll();
}	                                  
