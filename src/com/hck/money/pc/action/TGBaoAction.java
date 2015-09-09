package com.hck.money.pc.action;

import java.util.List;

import com.hck.money.bean.TGApp;
import com.hck.money.daoserver.TGAppServer;
import com.opensymphony.xwork2.ActionContext;

public class TGBaoAction extends BaseAction{
	private int page;
	private TGAppServer tServer;
	private List<TGApp> tgApps;
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public TGAppServer gettServer() {
		return tServer;
	}

	public void settServer(TGAppServer tServer) {
		this.tServer = tServer;
	}

	public List<TGApp> getTgApps() {
		return tgApps;
	}

	public void setTgApps(List<TGApp> tgApps) {
		this.tgApps = tgApps;
	}

	public String getTGBaos(){
		tgApps =tServer.getApps(page);
		if (tgApps != null && !tgApps.isEmpty()) {
			ActionContext.getContext().getSession().put("tgbPage", page);
		}
		return SUCCESS;
	}
	
	public String deleteTGB(){
		tServer.deleteTGB(id);
		return SUCCESS;
	}

}
