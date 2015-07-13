package com.hck.money.bean;

import java.sql.Timestamp;

/**
 * Jilu entity. @author MyEclipse Persistence Tools
 */

public class Jilu implements java.io.Serializable {

	// Fields

	private Long id;
	private Long uid;
	private String type;
	private Long jifeng;
	private Timestamp time;
	
	private Integer kid;

	

	public Integer getKid() {
		return kid;
	}

	public void setKid(Integer kid) {
		this.kid = kid;
	}

	/** default constructor */
	public Jilu() {
	}

	/** minimal constructor */
	public Jilu(Long uid) {
		this.uid = uid;
	}

	/** full constructor */
	public Jilu(Long uid, String type, Long jifeng, Timestamp time,int kid) {
		this.uid = uid;
		this.type = type;
		this.jifeng = jifeng;
		this.time = time;
		this.kid=kid;
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

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Long getJifeng() {
		return this.jifeng;
	}

	public void setJifeng(Long jifeng) {
		this.jifeng = jifeng;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

}