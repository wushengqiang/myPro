package com.officeTool.myTask.dao.impl;

import com.officeTool.myTask.dao.BaseDao;
import com.officeTool.myTask.dao.OraginDao;
import com.officeTool.myTask.pojo.Oragin;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wsq on 2016/3/2.
 */

@Repository
public class OraginDaoImpl<T> extends BaseDaoImpl<T> implements OraginDao<T>{

    @Resource(name = "sessionFactory")
    private SessionFactory sessionFactory;

    @Override
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<Oragin> queryOragins() {

        List<Oragin> lists= new ArrayList<Oragin>();
        String hql="From Oragin";

        Session session=sessionFactory.getCurrentSession();
        Query query=session.createQuery(hql);
        lists=query.list();
        return lists;
    }
}
