package com.hck.money.dao;

import java.util.List;

import com.hck.money.bean.JiLuTongjiBean;
import com.hck.money.bean.Jilu;
import com.hck.money.bean.Kind;
import com.hck.money.bean.MoneyBean;
import com.hck.money.bean.TypeMoney;

public interface JiLuDao {
	public List<Jilu> getJilus(int page,long uid);
	public void deleteJU(long uid);
	public List<Jilu> getJilus(int page,int type);
	public long getAllMoneyJL(int type);
	public MoneyBean getAllMoneyType(int type,List<Kind> kinds);
	public JiLuTongjiBean getJiLuTongjiBean(long uid);
	
	
	
	public void addJL(Jilu jilu);
	public long getCount(Long uid,int kindId);

}
