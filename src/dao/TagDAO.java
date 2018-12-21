package dao;

import java.util.List;

import entity.Tag;

public interface TagDAO extends DAO{     
	public void insertTag(Tag tag);
	public void updateTag(Tag tag);
	public void deleteTag(int tagId);
	public Tag findTagById(int tagId);
	public List<Tag> findTagByAll();
}	                                      
