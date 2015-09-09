package com.hck.money.daoserver;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.Config;

public class ConfigServer extends HibernateDaoSupport{
	public Config getConfig(){
		return (Config) getHibernateTemplate().get(Config.class, 1);
	}

}
