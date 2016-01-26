package com.officeTool.myTask.service;

import org.springframework.stereotype.Service;

import com.officeTool.myTask.pojo.User;

public interface UserService {

	User login(String userName,String password);
	
	boolean register(User user);
}
