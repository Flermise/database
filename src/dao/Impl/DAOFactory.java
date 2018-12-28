package dao.Impl;

import dao.*;

public class DAOFactory {
	private static DAOFactory instance;
	static
	{
		instance = new DAOFactory();
	}
	
	private DAOFactory() {}
	
	public static DAOFactory getInstance()
	{
		return instance;
	}
	
	public AreaDAO getAreaDAO() {
		return new AreaDAOImpl();
	}
	
	public AwardDAO getAwardDAO() {
		return new AwardDAOImpl();
	}
	
	public AwardInfoDAO getAwardInfoDAO() {
		return new AwardInfoDAOImpl();
	}
	
	public CelebAwardInfoDAO getCelebAwardInfoDAO() {
		return new CelebAwardInfoDAOImpl();
	}
	
	public CelebrityDAO getCelebrityDAO(){
		return new CelebrityDAOImpl();
	}
	
	public CommentDAO getCommentDAO() {
		return new CommentDAOImpl();
	}
	
	public LanguageDAO getLanguageDAO() {
		return new LanguageDAOImpl();
	}
	
	public MovieAwardInfoDAO getMovieAwardInfoDAO() {
		return new MovieAwardInfoDAOImpl();
	}
	
	public MovieDAO getMovieDAO() {
		return new MovieDAOImpl();
	}
	
	public MovieRoleDAO getMovieRoleDAO() {
		return new MovieRoleDAOImpl();
	}
	
	public MovieScoreDAO getMovieScoreDAO() {
		return new MovieScoreDAOImpl();
	}
	
	public MovieTagDAO getMovieTagDAO() {
		return new MovieTagDAOImpl();
	}
	
	public TagDAO getTagDAO() {
		return new TagDAOImpl();
	}
	
	public TypeDAO getTypeDAO() {
		return new TypeDAOImpl();
	}
	
	public UserInfoDAO geyUserInfoDAO() {
		return new UserInfoDAOImpl();
	}
	
	public UserTableDAO getUserTableDAO() {
		return new UserTableDAOImpl();
	}
}
