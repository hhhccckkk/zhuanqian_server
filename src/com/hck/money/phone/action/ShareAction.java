package com.hck.money.phone.action;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.hck.money.bean.Info;
import com.hck.money.bean.Share;
import com.hck.money.dao.InfoDao;
import com.hck.money.dao.ShareDao;

import net.sf.json.JSONObject;


public class ShareAction extends BaseAction{
	private JSONObject json;
	private String jsonString;
	private HttpServletRequest request = null;
	private HttpServletResponse response = null;
	private ShareDao shareDao;
	

	public ShareDao getShareDao() {
		return shareDao;
	}

	public void setShareDao(ShareDao shareDao) {
		this.shareDao = shareDao;
	}

	public void init() {
		json=new JSONObject();
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
	
	public void getShareP()
	{
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		Share info=shareDao.getShare(1);
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
