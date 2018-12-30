package dao;

import java.util.List;
import entity.MovieLanguage;

public interface MovieLanguageDAO extends DAO {
	public void insertMoiveLanguage(MovieLanguage ml);
	
	public void deleteMoiveLanguage(int mId,int languageId);
	public void deleteMoiveLanguageBymId(int mId);
	public void deleteMoiveLanguageByLanguageId(int languageId);
	
	public List<MovieLanguage> findMovieLanguageBymId(int mId);
	public List<MovieLanguage> findMovieLanguageByLanguageId(int languageId);
	public List<MovieLanguage> findMovieLanguageByAll();
	
	
	
}
