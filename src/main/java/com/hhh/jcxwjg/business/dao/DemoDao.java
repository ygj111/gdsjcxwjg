package com.hhh.jcxwjg.business.dao;

import javax.persistence.Entity;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.hhh.jcxwjg.business.entity.Demo;

public interface DemoDao extends CrudRepository<Demo, String>{
	
}
