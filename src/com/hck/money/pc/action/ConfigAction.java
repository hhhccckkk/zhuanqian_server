package com.hck.money.pc.action;

import com.hck.money.bean.Config;
import com.hck.money.dao.NewDao;

@SuppressWarnings("serial")
public class ConfigAction extends BaseAction{
	private Config news;
    private NewDao dao;
    private int configId;
	



	public int getConfigId() {
		return configId;
	}

	public void setConfigId(int configId) {
		this.configId = configId;
	}

	public NewDao getDao() {
		return dao;
	}

	public void setDao(NewDao dao) {
		this.dao = dao;
	}

	public Config getNews() {
		return news;
	}

	public void setNews(Config news) {
		this.news = news;
	}
	public String addNew()
	{
		dao.addNew(news);
		return SUCCESS;
	}
	public String getNew()
	{
		if (configId<=0) {
			configId=0;
		}
		news=dao.getNew(configId);
		return SUCCESS;
	}
	public String updateNew()
	{
		dao.updateNew(news);
		return SUCCESS;
	}

}
