package com.hck.money.bean;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Long id;
	private Integer isok;
	private String nicheng;
	private Timestamp time;
	private Long shangjia1;
	private Long shangjia2;
	private Long shangjia3;
	private Long shangjia4;
	private Long shangjia5;
	private Long shangjia6;
	private Long shangjia7;
	private Long shangjia8;
	private String userID;
	private String touxiang;
	private String mac;
	private String phone;
	private Long tj;
	private String xinghao;
	private String zhifubao;
	private String qq;
	private int choujiang;
	private String sdk;
	private String pushid;
	private String ips;
	
	
	public String getIps() {
		return ips;
	}

	public void setIps(String ips) {
		this.ips = ips;
	}

	public String getPushid() {
		return pushid;
	}

	public void setPushid(String pushid) {
		this.pushid = pushid;
	}

	public String getSdk() {
		return sdk;
	}

	public void setSdk(String sdk) {
		this.sdk = sdk;
	}

	public Long getShangjia6() {
		return shangjia6;
	}

	public void setShangjia6(Long shangjia6) {
		this.shangjia6 = shangjia6;
	}

	public Long getShangjia7() {
		return shangjia7;
	}

	public void setShangjia7(Long shangjia7) {
		this.shangjia7 = shangjia7;
	}

	public Long getShangjia8() {
		return shangjia8;
	}

	public void setShangjia8(Long shangjia8) {
		this.shangjia8 = shangjia8;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getTouxiang() {
		return touxiang;
	}

	public void setTouxiang(String touxiang) {
		this.touxiang = touxiang;
	}

	private Timestamp shareTime;

	public Timestamp getShareTime() {
		return shareTime;
	}

	public void setShareTime(Timestamp shareTime) {
		this.shareTime = shareTime;
	}

	public int getChoujiang() {
		return choujiang;
	}

	public void setChoujiang(int choujiang) {
		this.choujiang = choujiang;
	}

	public Long getShangjia4() {
		return shangjia4;
	}

	public void setShangjia4(Long shangjia4) {
		this.shangjia4 = shangjia4;
	}

	public Long getShangjia5() {
		return shangjia5;
	}

	public void setShangjia5(Long shangjia5) {
		this.shangjia5 = shangjia5;
	}

	public Long getShangjia1() {
		return shangjia1;
	}

	public void setShangjia1(Long shangjia1) {
		this.shangjia1 = shangjia1;
	}

	public Long getShangjia2() {
		return shangjia2;
	}

	public void setShangjia2(Long shangjia2) {
		this.shangjia2 = shangjia2;
	}

	public Long getShangjia3() {
		return shangjia3;
	}

	public void setShangjia3(Long shangjia3) {
		this.shangjia3 = shangjia3;
	}

	public String getXinghao() {
		return xinghao;
	}

	public void setXinghao(String xinghao) {
		this.xinghao = xinghao;
	}

	public String getZhifubao() {
		return zhifubao;
	}

	public void setZhifubao(String zhifubao) {
		this.zhifubao = zhifubao;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	private Set orderses = new HashSet(0);

	private Set usermoneies = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** full constructor */
	public User(String tjm, Integer isok, String nicheng, Timestamp time,
			String mac, String yqh, String phone, Long tj, Set orderses,
			Set usermoneies) {
		this.isok = isok;
		this.nicheng = nicheng;
		this.time = time;
		this.mac = mac;
		this.phone = phone;
		this.tj = tj;
		this.orderses = orderses;

		this.usermoneies = usermoneies;
	}

	public User(long id, int isok, String nicheng) {
		this.id = id;
		this.isok = isok;
		this.nicheng = nicheng;
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getIsok() {
		return this.isok;
	}

	public void setIsok(Integer isok) {
		this.isok = isok;
	}

	public String getNicheng() {
		return this.nicheng;
	}

	public void setNicheng(String nicheng) {
		this.nicheng = nicheng;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	public String getMac() {
		return this.mac;
	}

	public void setMac(String mac) {
		this.mac = mac;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Long getTj() {
		return this.tj;
	}

	public void setTj(Long tj) {
		this.tj = tj;
	}

	public Set getOrderses() {
		return this.orderses;
	}

	public void setOrderses(Set orderses) {
		this.orderses = orderses;
	}

	public Set getUsermoneies() {
		return this.usermoneies;
	}

	public void setUsermoneies(Set usermoneies) {
		this.usermoneies = usermoneies;
	}

}