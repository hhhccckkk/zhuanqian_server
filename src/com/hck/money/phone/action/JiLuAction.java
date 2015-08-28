package com.hck.money.phone.action;

import com.hck.money.bean.Info;
import com.hck.money.dao.InfoDao;

public class JiLuAction extends BaseAction {
	private InfoDao infoDao;

	public InfoDao getInfoDao() {
		return infoDao;
	}

	public void setInfoDao(InfoDao infoDao) {
		this.infoDao = infoDao;
	}

	public void getInfoP() {
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		Info info = infoDao.getInfo(1);
		if (info == null) {
			json.put("isok", false);
		} else {
			json.put("isok", true);
			json.put("info", info);
		}
		write();
	}

}
