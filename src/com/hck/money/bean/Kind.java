package com.hck.money.bean;

/**
 * Kind entity. @author MyEclipse Persistence Tools
 */

public class Kind implements java.io.Serializable {

	// Fields

	private Integer id;
	private String content;
	private Integer isok;
	private Integer num;
	private String neirong;
	private Integer aid;
	private String name;

	private int paixun;
	

	public int getPaixun() {
		return paixun;
	}

	public void setPaixun(int paixun) {
		this.paixun = paixun;
	}

	/** default constructor */
	public Kind() {
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

	public Integer getIsok() {
		return this.isok;
	}

	public void setIsok(Integer isok) {
		this.isok = isok;
	}

	public Integer getNum() {
		return this.num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public String getNeirong() {
		return this.neirong;
	}

	public void setNeirong(String neirong) {
		this.neirong = neirong;
	}

	public Integer getAid() {
		return this.aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}