package dao;

import java.util.List;

import entity.MovieAwardInfo;

public interface MovieAwardInfoDAO extends DAO {
	public void insertMovieAwardInfo(MovieAwardInfo mai);
	public void updateMovieAwardInfo(MovieAwardInfo mai);
	
	public void deleteMovieAwardInfo(int awdInfoId,int mId);
	public void deleteMovieAwardInfoByAwdInfoId(int awdInfoId);
	public void deleteMovieAwardInfoBymId(int mId);
	
	public MovieAwardInfo findMovieAwardInfo(int awdInfoId,int mId);
	public List<MovieAwardInfo> findMovieAwardInfoByAwdInfoId(int awdInfoId);
	public List<MovieAwardInfo> findMovieAwardInfoBymId(int mId);
	public List<MovieAwardInfo> findMovieAwardInfoByAll();
}
