package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.DAOBase;
import dao.LanguageDAO;
import entity.Language;

public class LanguageDAOImpl extends DAOBase implements LanguageDAO{
	private  Connection conn = null;
	private  PreparedStatement ps = null;
	private  ResultSet rs = null;
	
	private static final String INSERT_LANGUAGE_SQL=
			"INSERT INTO language(languageName) VALUES(?)";
	public void insertLanguage(Language language) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(INSERT_LANGUAGE_SQL);
			ps.setString(1, language.getLanguageName());
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		
	}

	private static final String UPDATE_LANGUAGE_SQL=
			"UPDATE language SET languageName=? WHERE languageId = ?";
	public void updateLanguage(Language language) {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(UPDATE_LANGUAGE_SQL);
			ps.setString(1, language.getLanguageName());
			ps.setInt(2, language.getLanguageId());
			ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String DELETE_LANGUAGE_SQL=
			"DELETE FROM language WHERE languageId = ?";
	public void deleteLanguage(int languageId)  {
		try {
			conn = getConnection();
			ps = conn.prepareStatement(DELETE_LANGUAGE_SQL);
			ps.setInt(1, languageId);
			ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
	}

	private static final String FIND_LANGUAGE_BY_ID_SQL=
			"SELECT * FROM language WHERE languageId = ?";
	public Language findLanguageById(int languageId) {
		Language language = new Language();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_LANGUAGE_BY_ID_SQL);
			ps.setInt(1, languageId);
			rs = ps.executeQuery();
			if(rs.next()) {
				language.setLanguageId(languageId);
				language.setLanguageName(rs.getString("languageName"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return language;
	}

	private static final String FIND_LANGUAGE_BY_ALL_SQL=
			"SELECT * FROM language";
	public List<Language> findLanguageByAll(){
		List<Language> languages = new ArrayList<Language>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(FIND_LANGUAGE_BY_ALL_SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				Language language = new Language();
				language.setLanguageId(rs.getInt("languageId"));
				language.setLanguageName(rs.getString("languageName"));
				languages.add(language);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			release(conn, ps, rs);
		}
		return languages;
	}

}