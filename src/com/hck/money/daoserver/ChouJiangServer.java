package com.hck.money.daoserver;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.Choujiang;
import com.hck.money.bean.Jilu;
import com.hck.money.bean.Orders;
import com.opensymphony.xwork2.ActionContext;

public class ChouJiangServer extends HibernateDaoSupport {
	public boolean addChouJiang(Choujiang data) {
		try {
			getHibernateTemplate().save(data);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@SuppressWarnings("unchecked")
	private List<Choujiang> getList(String sql, int page, int num) {
		List<Choujiang> pList = null;
		pList = new ArrayList<Choujiang>();
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

	public List<Choujiang> getChouJiangP(long uid) {
		String sql = null;
		List<Choujiang> datas = new ArrayList<Choujiang>();
		if (uid > 0) {
			sql = "from Choujiang c where c.uid=" + uid
					+ " order by c.id desc";
			return getHibernateTemplate().find(sql);
		} else {
			sql = "from Choujiang c order by c.id desc";
			return getList(sql, 1, 30);
		}
	}
	
	public List<Choujiang> getCJs(int page, int type) {
		String sqlString = null;
		Date endDate = new Date();
		Calendar cl = Calendar.getInstance();
		cl.setTime(endDate);
		if (type == 1) {
			sqlString = "from Choujiang j WHERE date(j.time) = curdate() order by j.id desc";
		} else if (type == 2) {
			cl.add(Calendar.DATE, -1);
			Date startDate = cl.getTime();
			SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
			// 格式化开始日期和结束日期
			String start = dd.format(startDate);
			String end = dd.format(endDate);

			sqlString = "from Choujiang j where j.time >= '" + start
					+ "' and j.time <= '" + end + "' order by j.id desc";
		} else {
			cl.add(Calendar.DATE, -7);
			Date startDate = cl.getTime();
			SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
			// 格式化开始日期和结束日期
			String start = dd.format(startDate);
			String end = dd.format(endDate);

			sqlString = "from Choujiang j where j.time >= '" + start
					+ "' and j.time <= '" + end + "' order by j.id desc";
		}
		ActionContext.getContext().getSession()
				.put("cj", getCount(sqlString));
		return getList(sqlString, page, 20);
	}
	private int getCount(String sql) {

		return this.getHibernateTemplate().find("from Choujiang").size();
	}
}
