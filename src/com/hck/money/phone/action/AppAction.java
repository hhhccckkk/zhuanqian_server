package com.hck.money.phone.action;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.hck.money.bean.Apps;
import com.hck.money.bean.Userapp;
import com.hck.money.bean.Userdownapp;
import com.hck.money.dao.AppDao;
import com.hck.money.dao.UserDownAppDao;
import com.mysql.jdbc.log.Log;

import net.sf.json.JSONObject;

public class AppAction extends BaseAction {
	private JSONObject json;
	private String jsonString;
	private HttpServletRequest request = null;
	private HttpServletResponse response = null;
	private AppDao aDao;
	private UserDownAppDao dao;
	private List<Userdownapp> downList;

	public AppDao getaDao() {
		return aDao;
	}

	public UserDownAppDao getDao() {
		return dao;
	}

	public void setDao(UserDownAppDao dao) {
		this.dao = dao;
	}

	private int page;

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setaDao(AppDao aDao) {
		this.aDao = aDao;
	}

	public void init() {
		json = new JSONObject();
		if (response == null) {
			response = ServletActionContext.getResponse();
		}
		if (request == null) {
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
		response = null;
		request = null;
	}

	public void getAppsP() {
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		System.out.print("ТіКэ: " + page);
		long id = Long.parseLong(request.getParameter("id"));
		List<Apps> apps = aDao.getApps(page);
		downList = dao.getUserdownapps(id);
		change(apps, downList);
		if (apps != null) {
			json.put("isok", true);
			json.put("apps", apps);
		} else {
			json.put("isok", false);
		}
		write();
	}
	private void change(List<Apps> apps, List<Userdownapp> downList) {
		List<Apps> apps2 = apps;
		for (int j = 0; j < apps.size(); j++) {

			for (int i = 0; i < downList.size(); i++) {
              if (apps.get(j).getId().intValue()==downList.get(i).getAppid()) {
				apps2.remove(j);
				System.out.print("ПаµИ");
			}
			}
		}
		apps=apps2;
	}

}
