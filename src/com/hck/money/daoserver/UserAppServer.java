package com.hck.money.daoserver;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.Apps;
import com.hck.money.bean.Userapp;
import com.hck.money.dao.UserAppDao;

public class UserAppServer extends HibernateDaoSupport implements UserAppDao{

	public boolean addUserApp(Userapp appUserapp) {
		try {
			getHibernateTemplate().save(appUserapp);
		} catch (Exception e) {
			System.out.print("eeee"+e.toString());
			return false;

		}
		return true;
	}

	
	public void deleteUserApp(int appId) {
		getHibernateTemplate().delete(getHibernateTemplate().get(Userapp.class, appId));
	}

	@SuppressWarnings("unchecked")
	public List<Userapp> getUserapps(long uid,int page) {
		String sqlString="from Userapp ua where ua.uid="+uid+" and ua.isqd=0 order by ua.time asc";
		return getHibernateTemplate().find(sqlString);
	}
	private List<Userapp> getList(String sql, int page, int num) {
		List<Userapp> pList = new ArrayList<Userapp>();
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
	public boolean qiandao(Long appId) {
		Userapp apUserapp=(Userapp) getHibernateTemplate().get(Userapp.class, appId);
		System.out.print(apUserapp+"");
		if (apUserapp!=null) {
			apUserapp.setIsqd(1);
			getHibernateTemplate().update(apUserapp);
			return true;
		}
		return false;
	}

	

}
