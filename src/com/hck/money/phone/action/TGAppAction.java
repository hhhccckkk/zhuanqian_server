package com.hck.money.phone.action;

import java.io.IOException;
import java.sql.Timestamp;

import com.hck.dabao.DaBao;
import com.hck.dabao.DaoBaoOnErrorListener;
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

	public void daBao() {// √ª”√
		init();
		final long uid = getLongData("uid");
		long uid1 = getLongData("uid1");
		long uid2 = getLongData("uid2");
		long uid3 = getLongData("uid3");
		long uid4 = getLongData("uid4");
		try {
			DaBao.getAppUrl("laoke",uid, uid1, uid2, uid3, uid4,
					new DaoBaoOnErrorListener() {

						public void onErrorListener(String errorString) {
							json.put("isok", false);
							write();
						}

						public void onSuccess() {
							addDownUrl(uid);
						}
					});
		} catch (IOException e) {
			e.printStackTrace();
			json.put("isok", false);
			write();
		}
	}

	private void addDownUrl(long uid) {
		TGApp app = new TGApp();
		app.setDownUrl("apk/" + uid + ".apk");
		app.setSize(0);
		app.setTime(new Timestamp(System.currentTimeMillis()).toString());
		app.setUid(uid);
		boolean isok = server.addTgApp(app);
		if (isok) {
			json.put("isok", true);
			json.put("tgapp", app);
		} else {
			json.put("isok", false);
		}
		write();
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
