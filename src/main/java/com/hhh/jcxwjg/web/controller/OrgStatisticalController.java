package com.hhh.jcxwjg.web.controller;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hhh.jcxwjg.business.service.IOrgStaticlService;
import com.hhh.jcxwjg.web.model.OrgStatistics;

@Controller
@RequestMapping(value = "/statical")
public class OrgStatisticalController {
	
	
	@Autowired
	private IOrgStaticlService orgStatisticalService;	
	/**
	 * 机构数量汇总图表
	 * @return
	 */
	@RequestMapping(value = "/orgList", method = RequestMethod.GET)
    public String orgList(String code,Model model){
		
		List list = orgStatisticalService.getOrgCountByCode(code);
		System.out.println(list.get(0));
		if(list!=null&&list.size()>0){
			
			StringBuffer sb=new StringBuffer();
			for (int i = 0; i < list.size(); i++) {
				Object[] data=(Object[])list.get(i);
				sb.append("['").append(data[0]).append("',").append(data[1]).append("]");
				if(i!=list.size()-1){
					sb.append(",");
				}
			}
			model.addAttribute("data", sb);
		}
		System.out.println(list.get(0));
		model.addAttribute("list", list);
		return "jcxwjg/orgList";
    	
    }
	
	/**
	 * 机构数量汇总（按经济类型）
	 * @return
	 */
	@RequestMapping(value = "/orgListByencomy", method = RequestMethod.GET)
    public String orgListByencomy(Model model){
		List<OrgStatistics> list = orgStatisticalService.findByAreacodeAndLegalnature();
		StringBuffer areasData = new StringBuffer("");//地区
		StringBuffer qyData = new StringBuffer("");//企业
		StringBuffer syData = new StringBuffer("");//事业
		StringBuffer gyData = new StringBuffer("");//国有
		int size = list.size();
		List<String> areasStr = new ArrayList<String>();
		List<BigInteger> qy = new ArrayList<BigInteger>();
		List<BigInteger> sy = new ArrayList<BigInteger>();
		List<BigInteger> gy = new ArrayList<BigInteger>();
		for (int i = 0; i < size; i++) {
			OrgStatistics orgStatistics = list.get(i);
			if(!areasStr.contains(orgStatistics.getAreaname()))areasStr.add(orgStatistics.getAreaname());
			if(orgStatistics.getLegalnature()==1)qy.add(orgStatistics.getTotal());
			if(orgStatistics.getLegalnature()==2)sy.add(orgStatistics.getTotal());
			if(orgStatistics.getLegalnature()==3)gy.add(orgStatistics.getTotal());
		}
		for (int i = 0; i < areasStr.size(); i++) {
			if(i<areasStr.size()-1){
				areasData.append("'"+areasStr.get(i)+"',");
			}else{
				areasData.append("'"+areasStr.get(i)+"'");
			}
		}
		for (int i = 0; i < qy.size(); i++) {
			if(i<qy.size()-1){
				qyData.append(qy.get(i)+",");
			}else{
				qyData.append(qy.get(i));
			}
		}
		for (int i = 0; i < sy.size(); i++) {
			if(i<sy.size()-1){
				syData.append(sy.get(i)+",");
			}else{
				syData.append(sy.get(i));
			}
		}
		for (int i = 0; i < gy.size(); i++) {
			if(i<gy.size()-1){
				gyData.append(gy.get(i)+",");
			}else{
				gyData.append(gy.get(i));
			}
		}
		model.addAttribute("areasData",areasData);
		model.addAttribute("qyData",qyData);
		model.addAttribute("syData",syData);
		model.addAttribute("gyData",gyData);
		model.addAttribute("areasStr",areasStr);
		model.addAttribute("qy",qy);
		model.addAttribute("sy",sy);
		model.addAttribute("gy",gy);
		model.addAttribute("list", list);
		return "jcxwjg/orgListByecomy";
    	
    }
	
	/**
	 * 机构数量汇总（按工商注册类型）
	 */
	
	@RequestMapping(value = "/orgListByindustry", method = RequestMethod.GET)
    public String orgListByindustry(Model model){
		
		List orgList1 = orgStatisticalService.getOrgCountByIndustry("全名所有制","1");
		List orgList2 = orgStatisticalService.getOrgCountByIndustry("集体所有制","2");
		List orgList3 = orgStatisticalService.getOrgCountByIndustry("有限责任制","3");
		List orgList4 = orgStatisticalService.getOrgCountByIndustry("股份合作制","4");
		
		if(orgList1!=null&&orgList1.size()>0){
			StringBuffer sb=new StringBuffer();
			StringBuffer sb1=new StringBuffer();
			StringBuffer sb2=new StringBuffer();
			StringBuffer sb3=new StringBuffer();
			StringBuffer sb4=new StringBuffer();
			for (int i = 0; i < orgList1.size(); i++) {
				Object[] data=(Object[])orgList1.get(i);
				sb.append("'").append(data[1]).append("'");
				
				sb1.append("").append(data[2]).append("");
				
				Object[] data2=(Object[])orgList2.get(i);
				sb2.append("").append(data2[2]).append("");
				
				Object[] data3=(Object[])orgList3.get(i);
				sb3.append("").append(data3[2]).append("");
				
				Object[] data4=(Object[])orgList4.get(i);
				sb4.append("").append(data4[2]).append("");
				if(i!=orgList1.size()-1){
					sb.append(",");
					sb1.append(",");
					sb2.append(",");
					sb3.append(",");
					sb4.append(",");
				}
			}
			model.addAttribute("data", sb);
			model.addAttribute("data1", sb1);
			model.addAttribute("data2", sb2);
			model.addAttribute("data3", sb3);
			model.addAttribute("data4", sb4);
		}
		model.addAttribute("orgList1", orgList1);
		model.addAttribute("orgList2", orgList2);
		model.addAttribute("orgList3", orgList3);
		model.addAttribute("orgList4", orgList4);
		return "jcxwjg/orgListByindustry";
    	
    }
	/**
	 * 机构数量汇总（按检测资质）
	 */
	
	@RequestMapping(value = "/orgListByjczz", method = RequestMethod.GET)
    public String orgListByjczz(){
		return "jcxwjg/orgListByjczz";
    	
    }
	/**
	 * 机构数量增长率
	 */
	
	@RequestMapping(value = "/orgListByzzl", method = RequestMethod.GET)
    public String orgListByzzl(){
		return "jcxwjg/orgListByzzl";
    	
    }
	/**
	 * 检测人员汇总
	 */
	
	@RequestMapping(value = "/orgJcryhz", method = RequestMethod.GET)
    public String orgJcryhz(){
		return "jcxwjg/orgJcryhz";
    	
    }
	
	/**
	 * 检测设备汇总
	 */
	
	@RequestMapping(value = "/orgSBhz", method = RequestMethod.GET)
    public String orgSBhz(){
		return "jcxwjg/orgSBhz";
    	
    }
	/**
	 * 机构汇总报表
	 */
	
	@RequestMapping(value = "/orghz", method = RequestMethod.GET)
    public String orghz(){
		return "jcxwjg/orghz";
    	
    }
	/**
	 * 检测机构名单
	 */
	
	@RequestMapping(value = "/orgmd", method = RequestMethod.GET)
    public String orgmd(Model model){
		List enterpriseList=orgStatisticalService.findEnterpriseList();
		model.addAttribute("enterpriseList", enterpriseList);
		return "jcxwjg/orgmd";
    	
    }
	/**
	 * 检测机构名单
	 */
	
	@RequestMapping(value = "/orgJcRymd", method = RequestMethod.GET)
    public String orgJcRymd(){
		return "jcxwjg/orgJcRymd";
    	
    }
	/**
	 * 人员查看
	 */
	
	@RequestMapping(value = "/orgRyList", method = RequestMethod.GET)
    public String orgRyList(){
		return "jcxwjg/orgRyList";
    	
    }
	
	@RequestMapping(value="/findByAreacodeAndLegalnature",method = RequestMethod.GET)
	public @ResponseBody List<OrgStatistics> findByAreacodeAndLegalnature(){
		List<OrgStatistics> list = orgStatisticalService.findByAreacodeAndLegalnature();
		return list;
	}
}
