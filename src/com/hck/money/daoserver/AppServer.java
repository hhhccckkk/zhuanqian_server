package com.hck.money.daoserver;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.Apps;
import com.hck.money.dao.AppDao;
import com.opensymphony.xwork2.ActionContext;

public class AppServer extends HibernateDaoSupport implements AppDao{

	public void addApp(Apps apps) {
		getHibernateTemplate().save(apps);
	}

	public List<Apps> getApps(int page) {
		String sqlString="from Apps a order by a.id desc";
		ActionContext.getContext().getSession()
		.put("app", getCount(sqlString));

		return getList(sqlString, page, 12);
	}
	private int getCount(String sql) {

		return this.getHibernateTemplate().find(sql).size();
	}

	public Apps getOneApp(int id) {
		return (Apps) getHibernateTemplate().get(Apps.class, id);
	}

	public void updateApp(Apps app) {
		getHibernateTemplate().update(app);
	}

	public void delete(int id) {
		getHibernateTemplate().delete(getHibernateTemplate().get(Apps.class, id));
	}

	@SuppressWarnings("unchecked")
	public List<Apps> getAppsP(int page,long uid) {
		String sqlString="from Apps a where a.uid="+uid+" order by a.time desc";
		return getList(sqlString, page, 12);
	}
	
	private List<Apps> getList(String sql, int page, int num) {
		List<Apps> pList = new ArrayList<Apps>();
		Query query = null;
		Session session = this.getHibernateTemplate().getSessionFactory()
				.openSession();
		query = session.createQuery(sql);
		query.setFirstResult((page - 1) * num);
		query.setMaxResults(num);
		pList = query.list();
		super.releaseSession(session);
		session = null;
		return pList;
	}

	public boolean isExit(long uid, int aid) {
		
		String sqlString="from Userapp u where u.uid="+uid+" and u.aid="+aid;
		List<Object> objects=getHibernateTemplate().find(sqlString);
		if (objects==null || objects.isEmpty()) {
			return false;
		}
		else {
			return true;
		}
	}
	

}
