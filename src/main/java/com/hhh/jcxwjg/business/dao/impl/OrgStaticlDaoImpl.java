package com.hhh.jcxwjg.business.dao.impl;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hhh.jcxwjg.business.dao.IOrgStaticlDao;
import com.hhh.jcxwjg.web.model.OrgStatistics;

@Repository
public class OrgStaticlDaoImpl implements IOrgStaticlDao{

	@PersistenceContext
	private EntityManager entityManager;
	
	/**
	 * 机构数量汇总
	 */
	@Override
	public List findOrgList() {
		StringBuffer sql=new StringBuffer(" select * from("
				+ " select t3.name,(case when t4.total is null then 0 else total end) total  from jcjg_area t3  left join ("
				+ " select t1.name,count(t2.name)total from jcjg_area t1 inner join jcjg_enterprise t2 on t1.code=t2.areacode group by t1.code"
				+ " ) t4  on  t3.name=t4.name"
				+ " union select '全省',count(t2.name)total from jcjg_area t1 inner join jcjg_enterprise t2 on t1.code=t2.areacode "
				+ " ) t5  order by total desc" ); 
		Query query = entityManager.createNativeQuery(sql.toString());
		List resultList = query.getResultList();
		return resultList;
	}

	/**
	 * 机构数量汇总（）
	 */
	@Override
	public List findOrgListByIndustry(String name,String ownership) {
		StringBuffer sql = new StringBuffer();
		sql.append(" select '"+name+"' typename,t5.* from( ");
		sql.append(" select t3.name,(case when t4.total is null then 0 else total end) total,t3.num  from jcjg_area t3  left join (");
		sql.append(" select t1.name,count(t2.name)total from jcjg_area t1 inner join jcjg_enterprise t2 on t1.code=t2.areacode and t2.OWNERSHIP="+ownership+" group by t1.code"); 
		sql.append(" ) t4  on  t3.name=t4.name ");
		sql.append(" ) t5  order by num asc ");
		Query query = entityManager.createNativeQuery(sql.toString());
		List resultList = query.getResultList();
		return resultList;
	}

	
	public List<OrgStatistics> findByAreacodeAndLegalnature(){
		String sql = "SELECT t1. CODE,t1. NAME,t1.legalnature,IFNULL(t2.total, 0) "
				+ "FROM (SELECT a. CODE,a. NAME,b.LEGALNATURE FROM ( SELECT ja.`code`, ja.`name` FROM jcjg_area ja ) a"
				+ " CROSS JOIN ( SELECT DISTINCT je.LEGALNATURE FROM jcjg_enterprise je ) b"
				+ " WHERE b.LEGALNATURE IN (1, 2, 3) ) t1 LEFT JOIN "
				+ "( SELECT ja.`code`,ja.`name`,le.legalnature,COUNT(1) total FROM jcjg_enterprise le LEFT JOIN jcjg_area ja ON le.areacode = ja.`CODE`"
				+ " WHERE le.legalnature IN (1, 2, 3) GROUP BY ja.`CODE`,le.legalnature ) t2 ON t1. CODE = t2. CODE and t1. legalnature = t2. legalnature";
		Query query = entityManager.createNativeQuery(sql);
		List list = query.getResultList();
		OrgStatistics orgStatistics = null;
		List<OrgStatistics> resultList = new ArrayList<OrgStatistics>();
		for (int i = 0; i < list.size(); i++) {
			orgStatistics = new OrgStatistics();
			Object[] obj = (Object[])list.get(i);
			orgStatistics.setAreacode(obj[0].toString());
			orgStatistics.setAreaname(obj[1].toString());
			orgStatistics.setLegalnature((Integer)obj[2]);
			orgStatistics.setTotal((BigInteger)obj[3]);
			resultList.add(orgStatistics);
		}
		return resultList;
	}

	
    /**
     * 查询地区
     */
	@Override
	public List findAreaList() {
		StringBuffer sql=new StringBuffer(" select code ,name from jcjg_area where code!='999' order by code " ); 
		Query query = entityManager.createNativeQuery(sql.toString());
		List resultList = query.getResultList();
		return resultList;
	}
	
	/**
     * 查询企业
     */
	@Override
	public List findEnterpriseList() {
		StringBuffer sql=new StringBuffer(" select t1.name,t2.name areaname,t1.registerdate,(case when t1.legalnature='1' then '企业' when t1.legalnature='2' then '事业' when t1.legalnature='3' then '国有'  end ) legalnature ,(case when t1.ownership='1' then '全名所有制' when t1.ownership='2' then '集体所有制' when t1.ownership='3' then '有限责任制' when t1.ownership='4' then '股份合作制'  end ) ownership, t1.telephone from jcjg_enterprise t1 inner join jcjg_area t2 on t1.areacode=t2.code order by t2.num  " ); 
		Query query = entityManager.createNativeQuery(sql.toString());
		List resultList = query.getResultList();
		return resultList;
	}
   

	
}
