package com.hhh.jcxwjg.business.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="jcjg_enterprise")
public class JcjgEnterprise {
	@Id
	private String id;
	private String name;
	private String organcode;
	private String areacode;
	private Date registerdate;
	private Integer reportcount;
	private Integer modcount;
	private Integer qualifiedcount;
	private Integer unqualifiedcount;
	private Float modification;
	private Float desqualifiedrate;
	private Integer noqualification;
	private Integer overduedevice;
	private Integer isQualification;
	private Integer isDjjc;
	private Integer isZtjg;
	private Integer isJzmq;
	private Integer isGjg;
	private Integer isJzqy;
	private Integer legalnature;
	private Integer ownership;
	private String telephone;
	private Integer isoutQualification;
	private Integer qualificationsout;
	private Integer affiliatedperson;
	private Date createtime;
	private Date updatetime;
	private String remark;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOrgancode() {
		return organcode;
	}

	public void setOrgancode(String organcode) {
		this.organcode = organcode;
	}

	public String getAreacode() {
		return areacode;
	}

	public void setAreacode(String areacode) {
		this.areacode = areacode;
	}

	public Date getRegisterdate() {
		return registerdate;
	}

	public void setRegisterdate(Date registerdate) {
		this.registerdate = registerdate;
	}

	public Integer getReportcount() {
		return reportcount;
	}

	public void setReportcount(Integer reportcount) {
		this.reportcount = reportcount;
	}

	public Integer getModcount() {
		return modcount;
	}

	public void setModcount(Integer modcount) {
		this.modcount = modcount;
	}

	public Integer getQualifiedcount() {
		return qualifiedcount;
	}

	public void setQualifiedcount(Integer qualifiedcount) {
		this.qualifiedcount = qualifiedcount;
	}

	public Integer getUnqualifiedcount() {
		return unqualifiedcount;
	}

	public void setUnqualifiedcount(Integer unqualifiedcount) {
		this.unqualifiedcount = unqualifiedcount;
	}

	public Float getModification() {
		return modification;
	}

	public void setModification(Float modification) {
		this.modification = modification;
	}

	public Float getDesqualifiedrate() {
		return desqualifiedrate;
	}

	public void setDesqualifiedrate(Float desqualifiedrate) {
		this.desqualifiedrate = desqualifiedrate;
	}

	public Integer getNoqualification() {
		return noqualification;
	}

	public void setNoqualification(Integer noqualification) {
		this.noqualification = noqualification;
	}

	public Integer getOverduedevice() {
		return overduedevice;
	}

	public void setOverduedevice(Integer overduedevice) {
		this.overduedevice = overduedevice;
	}

	public Integer getIsQualification() {
		return isQualification;
	}

	public void setIsQualification(Integer isQualification) {
		this.isQualification = isQualification;
	}

	public Integer getIsDjjc() {
		return isDjjc;
	}

	public void setIsDjjc(Integer isDjjc) {
		this.isDjjc = isDjjc;
	}

	public Integer getIsZtjg() {
		return isZtjg;
	}

	public void setIsZtjg(Integer isZtjg) {
		this.isZtjg = isZtjg;
	}

	public Integer getIsJzmq() {
		return isJzmq;
	}

	public void setIsJzmq(Integer isJzmq) {
		this.isJzmq = isJzmq;
	}

	public Integer getIsGjg() {
		return isGjg;
	}

	public void setIsGjg(Integer isGjg) {
		this.isGjg = isGjg;
	}

	public Integer getIsJzqy() {
		return isJzqy;
	}

	public void setIsJzqy(Integer isJzqy) {
		this.isJzqy = isJzqy;
	}

	public Integer getLegalnature() {
		return legalnature;
	}

	public void setLegalnature(Integer legalnature) {
		this.legalnature = legalnature;
	}

	public Integer getOwnership() {
		return ownership;
	}

	public void setOwnership(Integer ownership) {
		this.ownership = ownership;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public Integer getIsoutQualification() {
		return isoutQualification;
	}

	public void setIsoutQualification(Integer isoutQualification) {
		this.isoutQualification = isoutQualification;
	}

	public Integer getQualificationsout() {
		return qualificationsout;
	}

	public void setQualificationsout(Integer qualificationsout) {
		this.qualificationsout = qualificationsout;
	}

	public Integer getAffiliatedperson() {
		return affiliatedperson;
	}

	public void setAffiliatedperson(Integer affiliatedperson) {
		this.affiliatedperson = affiliatedperson;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Date getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
}
