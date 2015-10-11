package com.hck.money.pc.action;

import java.sql.Timestamp;
import java.util.List;

import com.hck.money.bean.Hongbao;
import com.hck.money.daoserver.HongBaoServer;
import com.opensymphony.xwork2.ActionContext;

public class HongBaoAction extends BaseAction {
	private List<Hongbao> hongBaos;
	private HongBaoServer hBaoServer;
	private long uid;
	private Hongbao hongbao;
    private int page;
    private long id;
    
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public List<Hongbao> getHongBaos() {
		return hongBaos;
	}

	public void setHongBaos(List<Hongbao> hongBaos) {
		this.hongBaos = hongBaos;
	}

	public HongBaoServer gethBaoServer() {
		return hBaoServer;
	}

	public void sethBaoServer(HongBaoServer hBaoServer) {
		this.hBaoServer = hBaoServer;
	}

	public long getUid() {
		return uid;
	}

	public void setUid(long uid) {
		this.uid = uid;
	}

	public Hongbao getHongbao() {
		return hongbao;
	}

	public void setHongbao(Hongbao hongbao) {
		this.hongbao = hongbao;
	}

	public String getUserHongBaos() {
		hongBaos = hBaoServer.getUserHongBao(uid);
		return SUCCESS;
	}

	public String addHongBao() {
		hongbao.setIsOpen(0);
		hongbao.setIsXiTong(1);
		hongbao.setuName("蝌蚪手机赚钱官方");
		hongbao.setTime(new Timestamp(System.currentTimeMillis()).toString());
		hBaoServer.addHongBao(hongbao);

		return SUCCESS;
	}
	
	public String getHongBao(){
		hongBaos = hBaoServer.getHongbaoPC(page);
		if (hongBaos == null) {
			addActionError("没有数据");
		}
		ActionContext.getContext().getSession().put("hbPage", page);
		return SUCCESS;
	}
	
	public String deleteHongBao(){
		hBaoServer.deleteHongBao(id);
		return SUCCESS;
	}

}
