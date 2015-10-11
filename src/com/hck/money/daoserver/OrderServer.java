package com.hck.money.daoserver;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.swing.plaf.SliderUI;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;



import com.hck.money.bean.Jilu;
import com.hck.money.bean.Message;
import com.hck.money.bean.Orders;
import com.hck.money.bean.User;
import com.hck.money.bean.Usermoney;
import com.hck.money.dao.OrderDao;
import com.opensymphony.xwork2.ActionContext;

public class OrderServer extends HibernateDaoSupport implements OrderDao {
	List<Orders> pList;
	
	public synchronized boolean addOrder(Orders orders) {
		getHibernateTemplate().save(orders);
		return true;
	}

	public boolean dealOrder(long id) {
		try {
			Orders orders = (Orders) getHibernateTemplate().get(Orders.class,
					id);
			orders.setState(1);
			orders.setTime(new Timestamp(System.currentTimeMillis()));
			getHibernateTemplate().update(orders);
			addMessage2(orders, orders.getUser().getId());

			return true;
		} catch (Exception e) {
			
			return false;
		}
	}
	
	public void addMessage(Message message) {
        getHibernateTemplate().save(message);		
	}
	public void addMessage2(Orders orders,long id) {
		Message message=new Message();
		message.setContent("您的订单号："+orders.getId()+" "+orders.getContent()+"已经处理完成");
		message.setLaizi("系统");
		message.setState(0);
		message.setTime(new Timestamp(System.currentTimeMillis()));
		message.setUid(id);
        getHibernateTemplate().save(message);		
	}
	@SuppressWarnings("unchecked")
	public Usermoney getUsermoney(long uid) {
		List<Usermoney> usermoneys = new ArrayList<Usermoney>();
		String sqlString = "from Usermoney u where u.user.id=" + uid;
		usermoneys = getHibernateTemplate().find(sqlString);
		if (!usermoneys.isEmpty()) {
			return usermoneys.get(0);
		}
		return null;
	}

	public boolean updateMoney(long uid, long value, int type) {
		Usermoney usermoney = getUsermoney(uid);
		if (usermoney == null) {
			return false;
		} else {
			usermoney.setAlljifeng(usermoney.getAlljifeng() + value);
			getHibernateTemplate().update(usermoney);
			return true;
		}
	}

	public boolean deleteOrder(long id) {

		getHibernateTemplate().delete(
				getHibernateTemplate().get(Orders.class, id));
		return true;
	}

	public Orders getOneOrder(long id) {
		return null;
	}

	public Orders searchOrder(long id) {

		return (Orders) getHibernateTemplate().get(Orders.class, id);
	}

	@SuppressWarnings("unchecked")
	private List<Orders> getList(String sql, int page, int num) {
		if (pList == null) {
			pList = new ArrayList<Orders>();
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

	private int getCount(String sql) {
		return this.getHibernateTemplate().find(sql).size();
	}

	public List<Orders> getEndOrders(int page) {
		String sql = "from Orders o where o.state=1 order by o.id desc";
		ActionContext.getContext().getSession().put("orderSize", getCount(sql));
		return getList(sql, page, 12);
	}

	public List<Orders> getNoChuLiOrders(int page) {
		String sql = "from Orders o where o.state=0 order by o.id asc";
		ActionContext.getContext().getSession().put("orderSize", getCount(sql));
		return getList(sql, page, 12);
	}

	public List<Orders> getMyOrders(int page) {

		String sql = "from Orders o where o.ismy=1";
		ActionContext.getContext().getSession().put("orderSize", getCount(sql));
		return getList(sql, page, 12);
	}

	@SuppressWarnings("unchecked")
	public List<Orders> getChuLiOrdersP(long uid,int page) {
		String sql = "from Orders o where o.user.id=" + uid + " and o.state=1";
		return getList(sql, page, 10);
	}

	@SuppressWarnings("unchecked")
	public List<Orders> getNoChuLiOrdersP(long uid) {
		String sql = "from Orders o where o.user.id=" + uid + " and o.state=0 order by o.id asc";
		return getHibernateTemplate().find(sql);
	}

	public boolean deleteOrderP(long id) {
		try {
			Orders orders=(Orders) getHibernateTemplate().get(Orders.class, id);
			orders.setState(2);
			getHibernateTemplate().update(orders);
			return true;
		} catch (Exception e) {
			System.out.print(e.toString());
			return false;
		}
		
	}

	public List<Orders> getUserOrder(long uid) {
		String sql = "from Orders o where o.user.id="+uid;
		return getHibernateTemplate().find(sql);
	}
	

	public List<Orders> getUserOrderP(long uid,int page) {
		String sql = "from Orders o where o.user.id="+uid +"order by o.id desc";
		return getList(sql, page, 12);
	}

	public List<Orders> getNewOrders() {
		String sql = "from Orders o where o.state=1 order by o.id desc";
		return getList(sql, 1, 30);
	}
}
