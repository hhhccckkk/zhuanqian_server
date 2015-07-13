package com.hck.money.bean;

/**
 * News entity. @author MyEclipse Persistence Tools
 */

public class Config implements java.io.Serializable {

	// Fields

	private Integer id;
	private int config1;
	private int config2;
	private int config3;
	private String image1;
	private String image2;

	public String getImage1() {
		return image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public String getImage2() {
		return image2;
	}

	public void setImage2(String image2) {
		this.image2 = image2;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public int getConfig1() {
		return config1;
	}

	public void setConfig1(int config1) {
		this.config1 = config1;
	}

	public int getConfig2() {
		return config2;
	}

	public void setConfig2(int config2) {
		this.config2 = config2;
	}

	public int getConfig3() {
		return config3;
	}

	public void setConfig3(int config3) {
		this.config3 = config3;
	}

}