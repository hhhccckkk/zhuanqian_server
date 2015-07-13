package com.hck.money.daoserver;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.Tg;
import com.hck.money.dao.TgDao;

public class TgServer extends HibernateDaoSupport implements TgDao{

	public boolean addTg(Tg tg) {
		try {
			getHibernateTemplate().save(tg);
			return true;
		} catch (Exception e) {
			return false;
		}
		
	}

	public boolean deleteTg(long id) {
		try {
			getHibernateTemplate().delete(getHibernateTemplate().get(Tg.class, id));
			return true;
		} catch (Exception e) {
			return false;
		}
		
	}

	@SuppressWarnings("unchecked")
	public List<Tg> getList(long uid) {
		String sqlString=" from Tg tg where tg.uid="+uid +"order by tg.time desc ";
		return getHibernateTemplate().find(sqlString);
	}

}
