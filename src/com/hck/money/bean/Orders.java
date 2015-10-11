package com.hck.money.bean;

import java.sql.Timestamp;

/**
 * Orders entity. @author MyEclipse Persistence Tools
 */

public class Orders implements java.io.Serializable {

	// Fields

	private Long id;
	private User user;
	private String content;
	private Integer state;
	private Timestamp time;
	private Integer ismy;
    private long kedoubi;
    private String info;
    

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public long getKedoubi() {
		return kedoubi;
	}

	public void setKedoubi(long kedoubi) {
		this.kedoubi = kedoubi;
	}


	/** default constructor */
	public Orders() {
	}

	/** full constructor */
	public Orders(User user, String content, Integer state, Timestamp time,
			Integer ismy,long kdb,String yqm) {
		this.user = user;
		this.content = content;
		this.state = state;
		this.time = time;
		this.ismy = ismy;
		this.kedoubi=kdb;
		
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	public Integer getIsmy() {
		return this.ismy;
	}

	public void setIsmy(Integer ismy) {
		this.ismy = ismy;
	}

}