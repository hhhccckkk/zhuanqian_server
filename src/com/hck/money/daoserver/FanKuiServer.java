package com.hck.money.daoserver;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.FanKui;

public class FanKuiServer extends HibernateDaoSupport {
	public boolean addFanKui(FanKui fanKui) {
		try {
			getHibernateTemplate().save(fanKui);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	public List<FanKui> getFanKuis(){
		String sql = "from FanKui f"
				+ " order by f.id desc";
		return getHibernateTemplate().find(sql);
	}
	
	public void deleteFanKui(int id){
		getHibernateTemplate().delete(getHibernateTemplate().get(FanKui.class, id));
	}

}
