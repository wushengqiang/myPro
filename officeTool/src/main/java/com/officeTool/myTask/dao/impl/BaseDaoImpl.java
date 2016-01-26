package com.officeTool.myTask.dao.impl;

import java.lang.reflect.ParameterizedType;

import javax.annotation.Resource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.officeTool.myTask.dao.BaseDao;

public class BaseDaoImpl<T>  implements BaseDao<T> {
	
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	/* (non-Javadoc)
	 * @see com.officeTool.myTask.dao.BaseDao#save(java.lang.Object)
	 */
	@Override
	public boolean save(T entity) {
		
		boolean flag=false;
		try{
			Session session=sessionFactory.getCurrentSession();
			session.save(entity);
			flag=true;
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return flag;
	}

	@Override
	public void delete(String[] ids) {
		
		try{
			
			Session session =sessionFactory.getCurrentSession();
			T entity = null;
	        for (int i = 0; i < ids.length; i++) {
	            entity = this.find(Long.parseLong(ids[i]));
	            session.delete(entity);
	        }
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void update(T entity) {
		
		try{
			
			Session session =sessionFactory.getCurrentSession();
			session.update(entity);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public T find(Long id) {
		
		T entity=null;
		
		try{
			
			Session session = sessionFactory.getCurrentSession();
			
			 ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
		     Class<T> clazz = (Class<T>) pt.getActualTypeArguments()[0];	
		     entity=(T) session.get(clazz, id);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return entity;
	}

	@Override
	public void saveOrUpdate(T entity) {
		try{
			
			Session session =sessionFactory.getCurrentSession();
			session.saveOrUpdate(entity);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
