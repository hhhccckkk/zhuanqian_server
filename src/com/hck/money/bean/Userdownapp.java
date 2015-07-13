package com.hck.money.bean;

/**
 * Userdownapp entity. @author MyEclipse Persistence Tools
 */

public class Userdownapp implements java.io.Serializable {

	// Fields

	private Long id;
	private Long uid;
	private Integer appid;

	// Constructors

	/** default constructor */
	public Userdownapp() {
	}

	/** full constructor */
	public Userdownapp(Long uid, Integer appid) {
		this.uid = uid;
		this.appid = appid;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getUid() {
		return this.uid;
	}

	public void setUid(Long uid) {
		this.uid = uid;
	}

	public Integer getAppid() {
		return this.appid;
	}

	public void setAppid(Integer appid) {
		this.appid = appid;
	}

}