package dao;

import java.util.List;

import entity.Language;

public interface LanguageDAO extends DAO{     
	public void insertLanguage(Language language);
	public void updateLanguage(Language language);
	public void deleteLanguage(int languageId);
	public Language findLanguageById(int languageId);
	public List<Language> findLanguageByAll();
}	                                     