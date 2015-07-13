package com.hck.money.pc.action;

import java.util.List;

import com.hck.money.bean.Jilu;
import com.hck.money.bean.Kind;
import com.hck.money.bean.MoneyBean;
import com.hck.money.bean.TypeMoney;
import com.hck.money.bean.Usermoney;
import com.hck.money.dao.JiLuDao;
import com.hck.money.dao.KindDao;
import com.hck.money.dao.UserMoneyDao;
import com.opensymphony.xwork2.ActionContext;

public class GetMoneyTJAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<Jilu> moneyList;
	private MoneyBean moneyBean;
	private KindDao kDao;
	public KindDao getkDao() {
		return kDao;
	}
	public void setkDao(KindDao kDao) {
		this.kDao = kDao;
	}
	private List<Kind> kinds;
	private int page;
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public List<Jilu> getMoneyList() {
		return moneyList;
	}
	public void setMoneyList(List<Jilu> moneyList) {
		this.moneyList = moneyList;
	}
	public void setMoneyDao(JiLuDao moneyDao) {
		this.moneyDao = moneyDao;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	public JiLuDao getMoneyDao() {
		return moneyDao;
	}
	private JiLuDao moneyDao;
	private int type;
	
	
	public MoneyBean getMoneyBean() {
		return moneyBean;
	}
	public void setMoneyBean(MoneyBean moneyBean) {
		this.moneyBean = moneyBean;
	}
	public String getMoneyAllP()
	{
		moneyList=moneyDao.getJilus(page,1);
		kinds=kDao.getKinds();
		if (moneyList==null) {
			addActionError("没有数据");
		}
		
		ActionContext.getContext().getSession().put("jilu2Page", page);
		moneyBean=moneyDao.getAllMoneyType(1,kinds);
		return SUCCESS;
	}
	public String getMoneyAllP2()
	{
		moneyList=moneyDao.getJilus(page,2);
		kinds=kDao.getKinds();
		if (moneyList==null) {
			addActionError("没有数据");
		}
		ActionContext.getContext().getSession().put("jilu2Page", page);
		moneyBean=moneyDao.getAllMoneyType(2,kinds);
		
		return SUCCESS;
	}
	public String getMoneyAllP3()
	{
		moneyList=moneyDao.getJilus(page,3);
		kinds=kDao.getKinds();
		if (moneyList==null) {
			addActionError("没有数据");
		}
		ActionContext.getContext().getSession().put("jilu2Page", page);
		moneyBean=moneyDao.getAllMoneyType(3,kinds);
		return SUCCESS;
	}
	
	

}
