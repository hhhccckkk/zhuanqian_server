package com.hck.money.pc.action;

import java.util.List;

import com.hck.money.bean.Tg;
import com.hck.money.daoserver.TgServer;
import com.opensymphony.xwork2.ActionContext;
public class TGaction extends BaseAction {
	private TgServer tgAppServer;
	public List<Tg> tgs;
	
	public long getUid() {
		return uid;
	}

	public void setUid(long uid) {
		this.uid = uid;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public List<Tg> getTgs() {
		return tgs;
	}

	public void setTgs(List<Tg> tgs) {
		this.tgs = tgs;
	}

	private long uid;
	private int page;

	public TgServer getTgAppServer() {
		return tgAppServer;
	}

	public void setTgAppServer(TgServer tgAppServer) {
		this.tgAppServer = tgAppServer;
	}

	public String getTGPC() {
		tgs = tgAppServer.getListPC(uid, page);
		ActionContext.getContext().getSession().put("tgpPage", page);
		ActionContext.getContext().getSession().put("tgpuid", uid);
		return SUCCESS;
	}
}
