package com.officeTool.myTask.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.officeTool.myTask.dao.UserDao;
import com.officeTool.myTask.pojo.User;
import com.officeTool.myTask.service.UserService;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public void setUserDao(UserDao userDao) {

        this.userDao = userDao;
    }


    public User login(String userName, String password) {

        return userDao.login(userName, password);
    }


    public boolean register(User user) {

        return userDao.save(user);
    }

}
