package com.hck.money.daoserver;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.Kind;
import com.hck.money.dao.KindDao;

public class KindServer extends HibernateDaoSupport implements KindDao {

	public boolean addKind(Kind kind) {
		getHibernateTemplate().save(kind);
		return true;
	}

	public boolean deleteKind(int id) {
		getHibernateTemplate().delete(getHibernateTemplate().get(Kind.class, id));
		return true;
	}

	@SuppressWarnings("unchecked")
	public List<Kind> getKinds() {
		
		return getHibernateTemplate().find("from Kind k where k.isok=1 order by k.paixun asc");
	}

	public void upateKind(Kind kind) {
		
             getHibernateTemplate().update(kind);
	}

	public Kind getOneKind(int id) {
		
		return (Kind) getHibernateTemplate().get(Kind.class, id);
	}

}
