package com.hck.money.bean;

/**
 * Info entity. @author MyEclipse Persistence Tools
 */

public class Info implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private String content;
	private String downurl;

	// Constructors

	/** default constructor */
	public Info() {
	}

	/** minimal constructor */
	public Info(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public Info(Integer id, Integer version, String content, String downurl) {
		this.id = id;
		this.version = version;
		this.content = content;
		this.downurl = downurl;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getVersion() {
		return this.version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDownurl() {
		return this.downurl;
	}

	public void setDownurl(String downurl) {
		this.downurl = downurl;
	}

}