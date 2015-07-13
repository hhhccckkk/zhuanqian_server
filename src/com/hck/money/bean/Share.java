package com.hck.money.bean;

/**
 * Share entity. @author MyEclipse Persistence Tools
 */

public class Share implements java.io.Serializable {

	// Fields

	private Integer id;
	private String content;
	private String url;
	private String imageurl;

	// Constructors

	/** default constructor */
	public Share() {
	}

	/** full constructor */
	public Share(String content, String url, String imageurl) {
		this.content = content;
		this.url = url;
		this.imageurl = imageurl;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getImageurl() {
		return this.imageurl;
	}

	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}

}