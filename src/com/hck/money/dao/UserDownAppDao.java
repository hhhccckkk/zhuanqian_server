package com.hck.money.dao;

import java.util.List;

import com.hck.money.bean.Userdownapp;

public interface UserDownAppDao {
	public boolean addUserDownApp(int appId,long uid);
	public List<Userdownapp> getUserdownapps(long uid);
 
	 
 
}
