package com.hck.money.pc.action;

import com.hck.money.bean.Info;
import com.hck.money.dao.InfoDao;

@SuppressWarnings("serial")
public class VisonAction extends BaseAction{
	private InfoDao dao;
	private Info info;
	public InfoDao getDao() {
		return dao;
	}
	public void setDao(InfoDao dao) {
		this.dao = dao;
	}
	public Info getInfo() {
		return info;
	}
	public void setInfo(Info info) {
		this.info = info;
	}
	public String addVison()
	{
		dao.addVison(info);
		return SUCCESS;
	}
	public String getVison()
	{
		info=dao.getInfo(1);
		return SUCCESS;
	}
	public String updateVison()
	{
		dao.updateInfo(info);
		return SUCCESS;
	}

}
