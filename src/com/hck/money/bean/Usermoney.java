package com.hck.money.bean;

/**
 * Usermoney entity. @author MyEclipse Persistence Tools
 */

public class Usermoney implements java.io.Serializable {

	// Fields

	private Long id;
	private User user;
	private Long allmoney;
	private Long toayjifeng;
	private Long tjmoney;
	private Long alljifeng;
	public Usermoney() {
	}

	/** minimal constructor */
	public Usermoney(User user) {
		this.user = user;
	}

	/** full constructor */
	public Usermoney(User user, Long allmoney, Long toayjifeng, Long tjmoney,
			Long alljifeng) {
		this.user = user;
		this.allmoney = allmoney;
		this.toayjifeng = toayjifeng;
		this.tjmoney = tjmoney;
		this.alljifeng = alljifeng;
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

	public Long getAllmoney() {
		return this.allmoney;
	}

	public void setAllmoney(Long allmoney) {
		this.allmoney = allmoney;
	}

	public Long getToayjifeng() {
		return this.toayjifeng;
	}

	public void setToayjifeng(Long toayjifeng) {
		this.toayjifeng = toayjifeng;
	}

	public Long getTjmoney() {
		return this.tjmoney;
	}

	public void setTjmoney(Long tjmoney) {
		this.tjmoney = tjmoney;
	}

	public Long getAlljifeng() {
		return this.alljifeng;
	}

	public void setAlljifeng(Long alljifeng) {
		this.alljifeng = alljifeng;
	}

}