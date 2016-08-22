package com.hhh.jcxwjg.business.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.hhh.jcxwjg.business.entity.JcjgEnterprise;
import com.hhh.jcxwjg.web.model.OrgStatistics;

public interface IOrgStaticlDao {

	public List findOrgList();

	public List findOrgListByIndustry(String name,String ownership);
	 /**
     * 查询地区
     */
	public List findAreaList();
	/**
     * 查询企业
     */
	public List findEnterpriseList();
	
	public List<OrgStatistics> findByAreacodeAndLegalnature();
	
}
