package com.hhh.jcxwjg.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hhh.jcxwjg.business.service.IOrgStaticlService;
/**
 * 诚信评价
 * @author 3hcs
 *
 */
@Controller
@RequestMapping(value = "/fact")
public class FactCotroller {
	@Autowired
	private IOrgStaticlService orgStatisticalService;	
	
	@RequestMapping(value = "/factList", method = RequestMethod.GET)
	public String factList(Model model){
		List list = orgStatisticalService.findAreaList();
        if(list!=null&&list.size()>0){
			StringBuffer sb=new StringBuffer();
			for (int i = 0; i < list.size(); i++) {
				Object[] data=(Object[])list.get(i);
				//<li><a href="${ctx}/statical/orgListByencomy">机构数量汇总（按经济类型）</a><img src="../img/gdsjcxwjg/menu_bot.png"></li>
				sb.append("<li><a href=\"#\">").append(data[1]).append("</a><img src=\"../img/gdsjcxwjg/menu_bot.png\"></li>");
			}
			model.addAttribute("data", sb);
		}
		model.addAttribute("list", list);
		return "jcxwjg/factList";
		
	}


}
