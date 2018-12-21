package dao;

import java.util.List;

import entity.MovieRole;

public interface MovieRoleDAO {
	public void insertMovieRole(MovieRole movieRole);
	public void updateMovieRole(MovieRole movieRole);
	public void deleteMovieRole(int movieRoleId);
	public MovieRole findMovieRoleById(int movieRoleId);
	public List<MovieRole> findMovieRoleByAll();
}	                                  