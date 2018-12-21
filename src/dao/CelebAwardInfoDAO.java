package dao;

import java.util.List;

import entity.CelebAwardInfo;

public interface CelebAwardInfoDAO extends DAO {
	public void insertCelebAwardInfo(CelebAwardInfo cai);
	public void updateCelebAwardInfo(CelebAwardInfo cai);
	
	public void deleteCelebAwardInfo(int awdInfoId,int celebId);
	public void deleteCelebAwardInfoByAwdInfoId(int awdInfoId);
	public void deleteCelebAwardInfoByCelebId(int celebId);
	
	public CelebAwardInfo findCelebAwardInfo(int awdInfoId,int celebId);
	public List<CelebAwardInfo> findCelebAwardInfoByAwdInfoId(int awdInfoId);
	public List<CelebAwardInfo> findCelebAwardInfoByCelebId(int celebId);
	public List<CelebAwardInfo> findCelebAwardInfoByAll();
}
