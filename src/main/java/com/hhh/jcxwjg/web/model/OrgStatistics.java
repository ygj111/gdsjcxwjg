package com.hhh.jcxwjg.web.model;

import java.math.BigInteger;

public class OrgStatistics {
	private String areacode;
	private String areaname;
	private Integer legalnature;
	private BigInteger total;
	
	public String getAreacode() {
		return areacode;
	}
	public void setAreacode(String areacode) {
		this.areacode = areacode;
	}
	public Integer getLegalnature() {
		return legalnature;
	}
	public void setLegalnature(Integer legalnature) {
		this.legalnature = legalnature;
	}
	public String getAreaname() {
		return areaname;
	}
	public void setAreaname(String areaname) {
		this.areaname = areaname;
	}
	public BigInteger getTotal() {
		return total;
	}
	public void setTotal(BigInteger total) {
		this.total = total;
	}
}
