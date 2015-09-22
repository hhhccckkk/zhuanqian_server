package com.hck.money.pc.action;

import java.util.List;

import com.hck.money.bean.TGApp;
import com.hck.money.daoserver.TGAppServer;
import com.opensymphony.xwork2.ActionContext;

public class TGBaoAction extends BaseAction {
	private int page;
	private int type;
	private TGAppServer tServer;
	private List<TGApp> tgApps;
	private int size;

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

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

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getTGBaos() {

		tgApps = tServer.getApps(page, type);
		if (tgApps != null && !tgApps.isEmpty()) {
			ActionContext.getContext().getSession().put("tgbPage", page);
		}
		return SUCCESS;
	}

	public String deleteTGB() {
		tServer.deleteTGB(id);
		return SUCCESS;
	}

	public String getTuiGuangBaoSize() {
		size = tServer.getBaoSize();
		return SUCCESS;
	}

}
