package com.hck.money.daoserver;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.Orders;
import com.hck.money.bean.Tg;
import com.hck.money.dao.TgDao;
import com.opensymphony.xwork2.ActionContext;

public class TgServer extends HibernateDaoSupport implements TgDao {

	public boolean addTg(Tg tg) {
		try {
			getHibernateTemplate().save(tg);
			return true;
		} catch (Exception e) {
			return false;
		}

	}

	public long getTgSize(long uid) {
		String sqlString = " from Tg tg where tg.uid=" + uid;
		List<Tg> tgs = getHibernateTemplate().find(sqlString);
		if (tgs == null) {
			return 0;
		} else {
			return tgs.size();
		}
	}

	public boolean deleteTg(long id) {
		try {
			getHibernateTemplate().delete(
					getHibernateTemplate().get(Tg.class, id));
			return true;
		} catch (Exception e) {
			return false;
		}

	}

	@SuppressWarnings("unchecked")
	private List<Tg> getList(String sql, int page, int num) {
		List<Tg> pList = null;
		if (pList == null) {
			pList = new ArrayList<Tg>();
		}
		Query query = null;
		Session session = this.getHibernateTemplate().getSessionFactory()
				.openSession();
		query = session.createQuery(sql);
		query.setFirstResult((page - 1) * num);
		query.setMaxResults(num);
		pList = query.list();
		super.releaseSession(session);
		return pList;
	}

	@SuppressWarnings("unchecked")
	public List<Tg> getList(long uid, int page) {
		String sqlString = " from Tg tg where tg.uid=" + uid
				+ "order by tg.time desc ";
		return getList(sqlString, page, 10);
	}
	
	
	public List<Tg> getListPC(long uid, int page) {
		String sqlString = " from Tg tg where tg.uid=" + uid
				+ "and type=1 order by tg.time desc ";
		ActionContext.getContext().getSession().put("tgpSize", getTgSize(uid));
		return getList(sqlString, page, 15);
	}

}
