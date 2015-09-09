package com.hck.money.pc.action;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import com.hck.money.bean.FanKui;
import com.hck.money.daoserver.FanKuiServer;

public class FanKuiAction extends BaseAction {
	private FanKuiServer fServer;
	private List<FanKui> fanKuis;
    private int fid;
    
	

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public List<FanKui> getFanKuis() {
		return fanKuis;
	}

	public void setFanKuis(List<FanKui> fanKuis) {
		this.fanKuis = fanKuis;
	}

	public FanKuiServer getfServer() {
		return fServer;
	}

	public void setfServer(FanKuiServer fServer) {
		this.fServer = fServer;
	}

	public String getFanKui() {
		fanKuis = fServer.getFanKuis();
		return SUCCESS;

	}
	public String deleteFanKui(){
		fServer.deleteFanKui(fid);
		return SUCCESS;
	}

}
