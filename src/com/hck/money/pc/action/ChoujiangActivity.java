package com.hck.money.pc.action;

import java.util.List;

import com.hck.money.bean.Choujiang;
import com.hck.money.daoserver.ChouJiangServer;
import com.opensymphony.xwork2.ActionContext;

public class ChoujiangActivity extends BaseAction {

	private ChouJiangServer chouJiangServer;
	private List<Choujiang> choujiangs;
	private int page;
	private int type;
	private long uid;

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

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public List<Choujiang> getChoujiangs() {
		return choujiangs;
	}

	public void setChoujiangs(List<Choujiang> choujiangs) {
		this.choujiangs = choujiangs;
	}

	public ChouJiangServer getChouJiangServer() {
		return chouJiangServer;
	}

	public void setChouJiangServer(ChouJiangServer chouJiangServer) {
		this.chouJiangServer = chouJiangServer;
	}

	public String getCJ() {

		choujiangs = chouJiangServer.getCJs(page, type);
		ActionContext.getContext().getSession().put("cjPage", page);
		ActionContext.getContext().getSession().put("cjtype", type);
		return SUCCESS;
	}

	public String getUserCJ() {
		choujiangs = null;
		choujiangs = chouJiangServer.getChouJiangP(uid);
		return SUCCESS;
	}
}
