package com.hck.money.dao;

import java.util.List;

import com.hck.money.bean.Userapp;

public interface UserAppDao {
	List<Userapp> getUserapps(long uid,int page);
	void deleteUserApp(int appId);
	boolean qiandao(Long appId);
	boolean addUserApp(Userapp appUserapp);
	
}
