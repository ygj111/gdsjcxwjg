package com.hhh.jcxwjg.business.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Demo {
	@Id
	private String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}
