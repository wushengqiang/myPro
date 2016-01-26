package com.officeTool.myTask.dao;

public interface BaseDao<T> {

	public boolean save(T entity);
	 
    public void delete(String[] ids);
 
    public void update(T entity);
 
    public T find(Long id);
 
    public void saveOrUpdate(T entity);
}
