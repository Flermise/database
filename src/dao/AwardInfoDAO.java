package dao;

import java.util.List;

import entity.AwardInfo;

public interface AwardInfoDAO extends DAO {
	public void insertAwardInfo(AwardInfo awdInfo);
	public void updateAwardInfo(AwardInfo awdInfo);
	public void deleteAwardInfo(int awdInfoId);
	public AwardInfo findAwardInfoById(int awdInfoId);
	public List<AwardInfo> findAwardInfoByAll();
}
