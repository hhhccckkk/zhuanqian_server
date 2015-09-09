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
	
	private ShareDao shareDao;
	

	public ShareDao getShareDao() {
		return shareDao;
	}

	public void setShareDao(ShareDao shareDao) {
		this.shareDao = shareDao;
	}

	
	
	public void getShareP()
	{
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		int id=getIntData("id");
		Share info=shareDao.getShare(id);
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
