package com.hck.money.bean;

import java.sql.Timestamp;

/**
 * Tg entity. @author MyEclipse Persistence Tools
 */

public class Tg implements java.io.Serializable {

	// Fields

	private Long id;
	private Long uid;
	private String content;
	private Timestamp time;
	private String userName;
    private int type;
    
	// Constructors

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	/** default constructor */
	public Tg() {
	}

	/** full constructor */
	public Tg(Long uid, String content, Timestamp time) {
		this.uid = uid;
		this.content = content;
		this.time = time;
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

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

}