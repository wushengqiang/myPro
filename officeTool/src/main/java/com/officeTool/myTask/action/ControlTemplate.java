package com.officeTool.myTask.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/template")
public class ControlTemplate {

	@RequestMapping("/index")
	public String toIndex(){
		
		System.out.println("hello springmvc");
		return "/index";
	}
}
