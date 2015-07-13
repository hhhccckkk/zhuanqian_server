package com.hck.money.daoserver;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.Config;
import com.hck.money.dao.NewDao;

public class NewServer extends HibernateDaoSupport  implements NewDao {

	public void addNew(Config news) {
		getHibernateTemplate().save(news);

	}

	public void deleteNew() {
		

	}

	public Config getNew(int id) {
		return (Config) getHibernateTemplate().get(Config.class, id);
	}

	public void updateNew(Config news) {
        getHibernateTemplate().update(news);
	}

}
