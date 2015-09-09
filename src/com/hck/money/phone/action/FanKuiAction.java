package com.hck.money.phone.action;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import com.hck.money.bean.FanKui;
import com.hck.money.daoserver.FanKuiServer;

public class FanKuiAction extends BaseAction {
	private FanKuiServer fServer;


	public FanKuiServer getfServer() {
		return fServer;
	}


	public void setfServer(FanKuiServer fServer) {
		this.fServer = fServer;
	}


	public void addFanKui() {
		init();
		String content = getStringData("content");
		long uid = getLongData("uid");
		FanKui fanKui = new FanKui();
		fanKui.setContent(content);
		fanKui.setUid(uid);
		fanKui.setTime(new Timestamp(System.currentTimeMillis()).toString());
		boolean b = fServer.addFanKui(fanKui);
		if (b) {
			json.put("isok", true);
		} else {
			json.put("isok", false);
		}
		write();

	}

}
