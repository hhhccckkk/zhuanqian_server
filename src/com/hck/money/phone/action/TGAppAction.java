package com.hck.money.phone.action;

import com.hck.money.bean.TGApp;
import com.hck.money.dao.UserDao;
import com.hck.money.daoserver.TGAppServer;

public class TGAppAction extends BaseAction {
	private TGAppServer server;
	private UserDao uDao;

	public UserDao getuDao() {
		return uDao;
	}

	public void setuDao(UserDao uDao) {
		this.uDao = uDao;
	}

	public TGAppServer getServer() {
		return server;
	}

	public void setServer(TGAppServer server) {
		this.server = server;
	}

	public void getMyTgAppUrl() {
		init();
		long uid1 = getLongData("uid");
		TGApp tgApp = server.getUserTGUrl(uid1);
		if (tgApp != null && tgApp.getDownUrl() != null) {
			json.put("isok", true);
			json.put("tgapp", tgApp);
		} else {
			json.put("isok", false);
		}
		write();
	}

}
