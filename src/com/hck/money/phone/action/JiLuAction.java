package com.hck.money.phone.action;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.hck.money.bean.Info;
import com.hck.money.dao.InfoDao;

import net.sf.json.JSONObject;


public class JiLuAction extends BaseAction{
	private JSONObject json;
	private String jsonString;
	private HttpServletRequest request = null;
	private HttpServletResponse response = null;
	private InfoDao infoDao;
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
		response=null;
		request=null;
	}
	
	public void getInfoP()
	{
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		Info info=infoDao.getInfo(1);
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
