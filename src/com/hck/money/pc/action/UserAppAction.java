package com.hck.money.pc.action;

import java.util.List;

import com.hck.money.bean.Userapp;
import com.hck.money.dao.UserAppDao;
import com.mysql.jdbc.log.Log;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class UserAppAction extends ActionSupport{
	private List<Userapp> userapps;
	private UserAppDao uDao;
	private int id;
	private int uid;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getId() {
		return id;
	}
	public List<Userapp> getUserapps() {
		return userapps;
	}
	public void setUserapps(List<Userapp> userapps) {
		this.userapps = userapps;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public UserAppDao getuDao() {
		return uDao;
	}
	public void setuDao(UserAppDao uDao) {
		this.uDao = uDao;
	}
	public String getUserApp()
	{
		userapps=uDao.getUserapps(id, 1);
		return SUCCESS;
	}
	public String deleteUserApp()
	{
		uDao.deleteUserApp(id);
		return SUCCESS;
	}
}
