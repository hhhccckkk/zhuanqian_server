package com.hck.money.daoserver;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.Message;
import com.hck.money.bean.User;
import com.hck.money.dao.Messagedao;
import com.opensymphony.xwork2.ActionContext;

public class MessageServer extends HibernateDaoSupport  implements Messagedao {

	public void deleteMessage(int mId) {
		getHibernateTemplate().delete(getHibernateTemplate().get(Message.class, mId));

	}

	public List<Message> getMessages(int page) {
		String sql="from Message m order by m.id desc";
		ActionContext.getContext().getSession().put("mSize", getCount(sql));
		return getList(sql, page, 12);
	}

	public void updateState(int mId) {

	}
	private int getCount(String sql) {

		return this.getHibernateTemplate().find(sql).size();
	}
	@SuppressWarnings("unchecked")
	private List<Message> getList(String sql, int page, int num) {
		List<Message> pList = new ArrayList<Message>();
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

	public void changeState(int id) {
		Message message=(Message) getHibernateTemplate().get(Message.class, id);
		if (message!=null) {
			message.setState(1);
			getHibernateTemplate().update(message);
		}
		
		
	}

	@SuppressWarnings("unchecked")
	public List<Message> getUserMessages(long uid) {
		String sqlString="from Message m where m.uid="+uid+" order by m.id desc";
		return getHibernateTemplate().find(sqlString);
	}

	public void addMessage(Message message) {
        getHibernateTemplate().save(message);		
	}

	@SuppressWarnings("unchecked")
	public long getCount(Long uid) {
		String hql = "select count(*) from Message m where m.uid="+uid+" and m.state=0"; 
		List<Long> sizeList=getHibernateTemplate().find(hql);
		if (sizeList!=null) {
			return sizeList.get(0);
		}
		return 0;
		
	}

}
