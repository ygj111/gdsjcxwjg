package com.hhh.jcxwjg.business.service.Impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.hhh.jcxwjg.business.dao.IOrgStaticlDao;
import com.hhh.jcxwjg.business.dao.JcjgAreaDao;
import com.hhh.jcxwjg.business.entity.JcjgArea;
import com.hhh.jcxwjg.business.service.IOrgStaticlService;
import com.hhh.jcxwjg.web.model.OrgStatistics;

@Component
public class OrgStaticlServiceImpl implements IOrgStaticlService{

	@Autowired
	private IOrgStaticlDao iStaticlDao;
	@Autowired
	private JcjgAreaDao jcjgAreaDao;
	
	public List getOrgCountByCode(String code) {
		return iStaticlDao.findOrgList();
		
		
	}

	@Override
	public List getOrgCountByIndustry(String name,String ownership) {
		
		return iStaticlDao.findOrgListByIndustry(name,ownership);
	}


	@Override
	public List<OrgStatistics> findByAreacodeAndLegalnature() {
		List<OrgStatistics> orgStatisticsList = iStaticlDao.findByAreacodeAndLegalnature();
		return orgStatisticsList;
	}
	


	 /**
     * 查询地区
     */
	@Override
	public List findAreaList() {
		
		return iStaticlDao.findAreaList();
	}
	/**
     * 查询企业
     */
	@Override
	public List findEnterpriseList() {

		return iStaticlDao.findEnterpriseList();
	}
  

}
