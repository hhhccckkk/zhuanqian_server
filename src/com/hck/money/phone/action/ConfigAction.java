package com.hck.money.phone.action;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.hck.money.bean.Config;
import com.hck.money.dao.NewDao;

import net.sf.json.JSONObject;

public class ConfigAction extends BaseAction {
	private JSONObject json;
	private String jsonString;
	private HttpServletRequest request = null;
	private HttpServletResponse response = null;
	private NewDao newDao;
    private int configId;
	
	public int getConfigId() {
		return configId;
	}
	public void setConfigId(int configId) {
		this.configId = configId;
	}
	public NewDao getNewDao() {
		return newDao;
	}
	public void setNewDao(NewDao newDao) {
		this.newDao = newDao;
	}
	public void init() {
		json = new JSONObject();
		response = ServletActionContext.getResponse();
		request = ServletActionContext.getRequest();
		response.setContentType("text/json;charset=utf-8");
		response.setCharacterEncoding("UTF-8");
	}
	private void write() {

		jsonString = json.toString();
		OutputStream oStream = null;
		try {
			oStream = response.getOutputStream();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		try {
			oStream.write(jsonString.getBytes("UTF-8"));
			oStream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void getConfigP()
	{
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		if (configId<=0) {
			configId=1;
		}
		Config news=newDao.getNew(configId);
		if (news==null) {
			json.put("isok", false);
		}
		else {
			json.put("isok", true);
			json.put("news", news);
		}
		write();
		response=null;
		request=null;
	}

}
