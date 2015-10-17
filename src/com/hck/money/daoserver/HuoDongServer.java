package com.hck.money.daoserver;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.HuoDongBean;

public class HuoDongServer extends HibernateDaoSupport {
	public List<HuoDongBean> getHuoDong() {
		String sql = "from HuoDongBean h order by h.paixu asc";
		return getHibernateTemplate().find(sql);
	}

}
