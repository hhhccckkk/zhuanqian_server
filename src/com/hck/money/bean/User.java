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
	private String tjm;
	private Integer isok;
	private String nicheng;
	private Timestamp time;
	private int xinshou;
	private int shareQQ;
	private int yaoqingQQ;
	private int shareXinLang;
	
	public int getShareQQ() {
		return shareQQ;
	}

	public void setShareQQ(int shareQQ) {
		this.shareQQ = shareQQ;
	}

	public int getYaoqingQQ() {
		return yaoqingQQ;
	}

	public void setYaoqingQQ(int yaoqingQQ) {
		this.yaoqingQQ = yaoqingQQ;
	}

	public int getShareXinLang() {
		return shareXinLang;
	}

	public void setShareXinLang(int shareXinLang) {
		this.shareXinLang = shareXinLang;
	}

	public int getXinshou() {
		return xinshou;
	}

	public void setXinshou(int xinshou) {
		this.xinshou = xinshou;
	}

	public String getSdk() {
		return sdk;
	}

	public void setSdk(String sdk) {
		this.sdk = sdk;
	}

	public String getIps() {
		return ips;
	}

	public void setIps(String ips) {
		this.ips = ips;
	}

	public String getXinghao() {
		return xinghao;
	}

	public void setXinghao(String xinghao) {
		this.xinghao = xinghao;
	}

	private String mac;
	private String yqh;
	private String phone;
	private Long tj;
	private String sdk;
	private String ips;
	private String xinghao;
	private String zhifubao;
	private String qq;
	
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
		this.tjm = tjm;
		this.isok = isok;
		this.nicheng = nicheng;
		this.time = time;
		this.mac = mac;
		this.yqh = yqh;
		this.phone = phone;
		this.tj = tj;
		this.orderses = orderses;
		
		this.usermoneies = usermoneies;
	}

	public  User(long id,int isok,String nicheng,String tjm)
	{
		this.id=id;
		this.isok=isok;
		this.nicheng=nicheng;
		this.tjm=tjm;
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTjm() {
		return this.tjm;
	}

	public void setTjm(String tjm) {
		this.tjm = tjm;
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

	public String getYqh() {
		return this.yqh;
	}

	public void setYqh(String yqh) {
		this.yqh = yqh;
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