package com.hck.money.daoserver;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.Info;
import com.hck.money.dao.InfoDao;

public class InfoServer extends HibernateDaoSupport  implements InfoDao {

	public void addVison(Info info) {
		getHibernateTemplate().save(info);

	}

	public void deleteinfo(int id) {

	}

	public Info getInfo(int id) {
		return (Info) getHibernateTemplate().get(Info.class, id);
	}

	public List<Info> getInfos() {
		return null;
	}

	public void updateInfo(Info info) {
		getHibernateTemplate().update(info);

	}

}
