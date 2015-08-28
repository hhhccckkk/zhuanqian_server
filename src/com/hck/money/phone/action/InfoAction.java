package com.hck.money.phone.action;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.hck.money.bean.Info;
import com.hck.money.dao.InfoDao;

import net.sf.json.JSONObject;


public class InfoAction extends BaseAction{
	
	private InfoDao infoDao;
	private int type;
	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public InfoDao getInfoDao() {
		return infoDao;
	}

	public void setInfoDao(InfoDao infoDao) {
		this.infoDao = infoDao;
	}

	public void init() {
		json=new JSONObject();
		if (response==null) {
			response = ServletActionContext.getResponse();
		}
		if (request==null) {
			request = ServletActionContext.getRequest();
		}
		response = ServletActionContext.getResponse();
		request = ServletActionContext.getRequest();
		response.setContentType("text/json;charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		
	}

	
	public void getInfoP()
	{
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		if (type==0) {
			type=1;
		}
		Info info=infoDao.getInfo(type);
		if (info==null) {
			json.put("isok", false);
		}
		else {
			json.put("isok", true);
			json.put("info", info);
		}
		write();
	}
	
}
