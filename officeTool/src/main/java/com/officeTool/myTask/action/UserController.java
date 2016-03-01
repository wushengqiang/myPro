package com.officeTool.myTask.action;

import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.officeTool.myTask.service.OraginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.officeTool.myTask.pojo.User;
import com.officeTool.myTask.service.UserService;
import com.officeTool.myTask.utils.MD5Utils;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private MD5Utils md5;

	@Autowired
	private OraginService oraginService;

	/**
	 * 登录
	 */
	@RequestMapping(value="/login", method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView login(@RequestParam Map<String, Object> params, HttpSession session,HttpServletResponse response){
		
		String userName = (String) params.get("userName");
		String password = (String) params.get("password");
		
		Cookie cookie=new Cookie("userName", userName);
		cookie.setMaxAge(60*60*24);
		response.addCookie(cookie);
		cookie = new Cookie("password",password);
		cookie.setMaxAge(60*60*24);
		response.addCookie(cookie);
		
		password=md5.digest(password);
		
		User user = userService.login(userName, password);

		oraginService.queryOragins();

		if(user==null){
			
			return new ModelAndView("/login").addObject("failStr", "用户名或者密码错误！！！");
		}else{
			
			session.setAttribute("user", user);
			ModelMap model=new ModelMap();
			model.addAttribute("user", user);
			
			return new ModelAndView("/jsp/index", model);
		}
	}
	
	/**
	 * 注册
	 */
	@RequestMapping(value="/register",method={RequestMethod.POST})
	public ModelAndView register(User user){
		
		user.setPassword(md5.digest(user.getPassword()));
		userService.register(user);
		return new ModelAndView("/login");
	}
}
