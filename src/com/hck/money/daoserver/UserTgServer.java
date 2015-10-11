package com.hck.money.daoserver;

import java.util.ArrayList;
import java.util.List;

import javax.swing.plaf.SliderUI;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.Orders;
import com.hck.money.bean.UserTg;
import com.opensymphony.xwork2.ActionContext;

public class UserTgServer extends HibernateDaoSupport {
	private List<UserTg> usList;

	public UserTg getUserTg(long uid) {
		String sql = "from UserTg tg where tg.uId=" + uid;
		@SuppressWarnings("unchecked")
		List<UserTg> tgs = getHibernateTemplate().find(sql);
		if (tgs != null && tgs.size() > 0) {
			return tgs.get(0);
		}
		else{
		}
		return null;
	}

	public void deleteUserTg(long uid) {
		getHibernateTemplate().delete(getUserTg(uid));
	}

	public List<UserTg> getTGList(int page) {
		String sql = "from UserTg tg order by tg.id desc";
		ActionContext.getContext().getSession().put("orderSize", getCount());
		return getList(sql, page, 12);

	}

	private int getCount() {
		String sql = "from UserTg ";
		return this.getHibernateTemplate().find(sql).size();
	}

	@SuppressWarnings("unchecked")
	private List<UserTg> getList(String sql, int page, int num) {

		usList = new ArrayList<UserTg>();
		Query query = null;
		Session session = this.getHibernateTemplate().getSessionFactory()
				.openSession();
		query = session.createQuery(sql);
		query.setFirstResult((page - 1) * num);
		query.setMaxResults(num);
		usList = query.list();
		super.releaseSession(session);
		return usList;
	}

}
