package com.officeTool.myTask.dao;

import com.officeTool.myTask.dao.BaseDao;
import com.officeTool.myTask.pojo.Oragin;

import java.util.List;

/**
 * Created by wsq on 2016/3/2.
 */
public interface OraginDao<T> extends BaseDao<T>{

    List<Oragin> queryOragins();
}
