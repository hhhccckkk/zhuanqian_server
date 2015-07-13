package com.hck.money.pc.action;

import java.util.List;

import com.hck.money.bean.Apps;
import com.hck.money.dao.AppDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class AppAction extends ActionSupport {
	private List<Apps> apps;
	private Apps app;
	private AppDao aDao;

	private int page;
	private int id;

	public List<Apps> getApps() {
		return apps;
	}

	public void setApps(List<Apps> apps) {
		this.apps = apps;
	}

	public Apps getApp() {
		return app;
	}

	public void setApp(Apps app) {
		this.app = app;
	}

	public AppDao getaDao() {
		return aDao;
	}

	public void setaDao(AppDao aDao) {
		this.aDao = aDao;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAppList() {
		apps = aDao.getApps(page);
		ActionContext.getContext().getSession().put("appPage", page);
		if (apps != null) {
			System.out.print(apps.get(0).getNeirong());
		}
		return SUCCESS;
	}

	public String getOneApp() {
		app = aDao.getOneApp(id);
		if (app != null) {
			System.out.print(app.getNeirong());
		}
		return SUCCESS;
	}

	public String updateApp() {
		
         aDao.updateApp(app);
         return SUCCESS;
	}
	public String addApps()
	{
		app.setIsok(1);
		aDao.addApp(app);
		 return SUCCESS;
	}
	public String deleteApp()
	{
		aDao.delete(id);
		 return SUCCESS;
	}
}
