package com.hhh.jcxwjg.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.hhh.jcxwjg.business.service.IDemoService;

@Controller
public class DemoController {
	@Autowired
	private IDemoService demoService;
	
}
