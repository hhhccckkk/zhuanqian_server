package com.hck.money.pc.action;

import java.util.List;

import com.hck.money.bean.Usermoney;
import com.hck.money.dao.UserMoneyDao;
import com.opensymphony.xwork2.ActionContext;

public class RankAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<Usermoney> usermoneys;
	public int getPage() {
		return page;
	}
	public List<Usermoney> getUsermoneys() {
		return usermoneys;
	}
	public void setUsermoneys(List<Usermoney> usermoneys) {
		this.usermoneys = usermoneys;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public UserMoneyDao getMoneyDaoServer() {
		return moneyDaoServer;
	}
	public void setMoneyDaoServer(UserMoneyDao moneyDaoServer) {
		this.moneyDaoServer = moneyDaoServer;
	}
	private UserMoneyDao moneyDaoServer;
	private int page;
	public String getRank1()
	{
		usermoneys=moneyDaoServer.getPH2(page);
		if (usermoneys==null) {
			addActionError("没有获取数据");
		}
		ActionContext.getContext().getSession().put("phPage", page);
		return SUCCESS;
	}
	public String getRank2()
	{
		usermoneys=moneyDaoServer.getTG2(page);
		if (usermoneys==null) {
			addActionError("没有获取数据");
		}
		ActionContext.getContext().getSession().put("tgPage", page);
		return SUCCESS;
	}
	

}
