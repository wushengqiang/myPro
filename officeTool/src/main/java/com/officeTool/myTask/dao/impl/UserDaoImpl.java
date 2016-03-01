package com.officeTool.myTask.dao.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.officeTool.myTask.dao.UserDao;
import com.officeTool.myTask.pojo.User;

@Repository
public class UserDaoImpl<T> extends BaseDaoImpl<T> implements UserDao<T> {

	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public User login(String userName, String password) {
		
		 User user=null;
		 
		 Session session = sessionFactory.getCurrentSession();
		 String hql="FROM User WHERE userName=:userName and password=:password";
		 List<User> userList=(List<User>)session.createQuery(hql).setParameter("userName", userName).setParameter("password", password).list();
		 
		 if(userList.size()>0){
			 
			 user=userList.get(0);
		 }
		 
		return user;
	}

}
