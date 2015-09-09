package com.hck.money.phone.action;

import java.sql.Timestamp;
import java.util.List;

import com.hck.money.bean.Hongbao;
import com.hck.money.daoserver.HongBaoServer;

public class HongBaoAction extends BaseAction {
	private Hongbao hongbao;
	private HongBaoServer hServer;

	public HongBaoServer gethServer() {
		return hServer;
	}

	public void sethServer(HongBaoServer hServer) {
		this.hServer = hServer;
	}

	public void addHongBao() {
		init();
		hongbao = new Hongbao();
		hongbao.setContent(getStringData("content"));
		hongbao.setIsOpen(0);
		hongbao.setPoint(getIntData("point"));
		hongbao.setTime(new Timestamp(System.currentTimeMillis()).toString());
		hongbao.setUid(getLongData("uid"));
		hongbao.setuName(getStringData("uname"));
		hServer.addHongBao(hongbao);
	}

	public void getHongBao() {
		init();
		long uid = getLongData("uid");
		List<Hongbao> hongbaos = hServer.getHongbaos(uid, getIntData("page"));
		int size = hServer.getCount(uid);
		if (hongbaos != null && !hongbaos.isEmpty()) {
			json.put("hongbaos", hongbaos);
			json.put("size", size);
			json.put("isok", true);
		} else {
			json.put("isok", false);
			json.put("size", 0);
		}
		write();
	}

	public void updateHongBao() {
		init();
		long id = getLongData("id");
		boolean b = hServer.updateHongBao(id);
		if (b) {
			json.put("isok", true);
		} else {
			json.put("isok", false);
		}
		write();

	}

}
