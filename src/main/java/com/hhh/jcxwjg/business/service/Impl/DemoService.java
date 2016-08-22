package com.hhh.jcxwjg.business.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.hhh.jcxwjg.business.dao.DemoDao;
import com.hhh.jcxwjg.business.service.IDemoService;

@Component
public class DemoService implements IDemoService {
	@Autowired
	private DemoDao demoDao;
}
