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


	public void getAppsP() {
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		long id = getLongData("id");
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
				if (apps.get(j).getId().intValue() == downList.get(i)
						.getAppid()) {
					apps2.remove(j);
					System.out.print("ПаµИ");
				}
			}
		}
		apps = apps2;
	}

}
