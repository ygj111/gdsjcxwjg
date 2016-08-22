package com.hhh.jcxwjg.business.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.hhh.jcxwjg.business.dao.IOrgStaticlDao;
import com.hhh.jcxwjg.business.entity.JcjgEnterprise;
import com.hhh.jcxwjg.web.model.OrgStatistics;


public interface IOrgStaticlService {

	public List getOrgCountByCode(String code);

	public List getOrgCountByIndustry(String name,String ownership);
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
