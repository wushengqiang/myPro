package com.officeTool.myTask.dao;

import com.officeTool.myTask.pojo.User;

public interface UserDao<T> extends BaseDao<T>{

	User login(String userName,String password);
}
