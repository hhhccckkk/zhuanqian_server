package com.hck.money.bean;

import java.sql.Timestamp;

/**
 * Userapp entity. @author MyEclipse Persistence Tools
 */

public class Userapp implements java.io.Serializable {

	// Fields

	private Long id;
	private String name;
	private String image1;
	private Integer price;
	private long uid;
	private Timestamp time;
	private Integer isok;
	private Integer isqd;
	private Integer iscanqd;
   private String baoming;
   private String rk;
   private int aid;
	// Constructors

	public int getAid() {
	return aid;
}

public void setAid(int aid) {
	this.aid = aid;
}

	public String getRk() {
	return rk;
}

public void setRk(String rk) {
	this.rk = rk;
}

	public String getBaoming() {
	return baoming;
}

public void setBaoming(String baoming) {
	this.baoming = baoming;
}

	/** default constructor */
	public Userapp() {
	}

	/** full constructor */
	public Userapp(String name, String image1, Integer price, Long uid,
			Timestamp time, Integer isok, Integer isqd, Integer iscanqd) {
		this.name = name;
		this.image1 = image1;
		this.price = price;
		this.uid = uid;
		this.time = time;
		this.isok = isok;
		this.isqd = isqd;
		this.iscanqd = iscanqd;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage1() {
		return this.image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	

	public long getUid() {
		return uid;
	}

	public void setUid(long uid) {
		this.uid = uid;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	public Integer getIsok() {
		return this.isok;
	}

	public void setIsok(Integer isok) {
		this.isok = isok;
	}

	public Integer getIsqd() {
		return this.isqd;
	}

	public void setIsqd(Integer isqd) {
		this.isqd = isqd;
	}

	public Integer getIscanqd() {
		return this.iscanqd;
	}

	public void setIscanqd(Integer iscanqd) {
		this.iscanqd = iscanqd;
	}

}