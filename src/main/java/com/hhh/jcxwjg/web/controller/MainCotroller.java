package com.hhh.jcxwjg.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/main")
public class MainCotroller {
	
	@RequestMapping(value = "/nav_top", method = RequestMethod.GET)
	public String nav_top(){
		return "admin/inc/nav_top";
		
	}
	
	@RequestMapping(value = "/nav_left", method = RequestMethod.GET)
	public String nav_left(){
		
		return "admin/inc/nav_left";
		
	}

}
