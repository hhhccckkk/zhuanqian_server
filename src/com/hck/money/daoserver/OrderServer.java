package com.hck.money.daoserver;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.swing.plaf.SliderUI;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.Jilu;
import com.hck.money.bean.Message;
import com.hck.money.bean.Orders;
import com.hck.money.bean.User;
import com.hck.money.bean.Usermoney;
import com.hck.money.dao.OrderDao;
import com.hck.money.vo.Contans;
import com.opensymphony.xwork2.ActionContext;

public class OrderServer extends HibernateDaoSupport implements OrderDao {
	List<Orders> pList;
	public static final int STATE_OK = 1;
	public static final int STATE_ERROR = 2;
	public static final int STATE_NO_CHULI = 0;

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
			//addMessage2(orders, orders.getUser().getId());
			return true;
		} catch (Exception e) {

			return false;
		}
	}

	public void addMessage(Message message) {
		getHibernateTemplate().save(message);
	}

	public void addMessage2(Orders orders, long id) {
		Message message = new Message();
		message.setContent("您的订单号：" + orders.getId() + " "
				+ orders.getContent() + "已经处理完成");
		message.setLaizi("系统");
		message.setState(0);
		message.setType(Contans.MSG_TYPE_XITONG);
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
			getHibernateTemplate().flush();
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
		String sql = "from Orders o where o.state=1 and o.type=1 order by o.id desc";
		ActionContext.getContext().getSession().put("orderSize", getCount(sql));
		return getList(sql, page, 12);
	}

	public List<Orders> getNoChuLiOrders(int page) {
		String sql = "from Orders o where o.state=0 and o.type=1 order by o.id asc";
		ActionContext.getContext().getSession().put("orderSize", getCount(sql));
		return getList(sql, page, 12);
	}

	public List<Orders> getMyOrders(int page) {

		String sql = "from Orders o where o.ismy=1";
		ActionContext.getContext().getSession().put("orderSize", getCount(sql));
		return getList(sql, page, 12);
	}

	@SuppressWarnings("unchecked")
	public List<Orders> getChuLiOrdersP(long uid, int page) {
		String sql = "from Orders o where o.user.id=" + uid + " and o.state=1 and o.type=1";
		return getList(sql, page, 10);
	}

	@SuppressWarnings("unchecked")
	public List<Orders> getNoChuLiOrdersP(long uid) {
		String sql = "from Orders o where o.user.id=" + uid
				+ " and o.state=0 and o.type=1 order by o.id asc";
		return getHibernateTemplate().find(sql);
	}

	public boolean deleteOrderP(long id) {
		try {
			Orders orders = (Orders) getHibernateTemplate().get(Orders.class,
					id);
			orders.setState(1);
			getHibernateTemplate().update(orders);
			return true;
		} catch (Exception e) {
			return false;
		}

	}

	public List<Orders> getUserOrder(long uid) {
		String sql = "from Orders o where o.user.id=" + uid +" and type=1 order by o.id desc";
		return getHibernateTemplate().find(sql);
	} 

	public List<Orders> getUserOrderP(long uid, int page) {
		String sql = "from Orders o where o.user.id=" + uid
				+ "order by o.id desc";
		return getList(sql, page, 12);
	}

	public List<Orders> getNewOrders() {
		String sql = "from Orders o where o.state=1 and type=1 order by o.id desc";
		return getList(sql, 1, 40);
	}

	public String addOrderDuiBa(Orders order) {
		try {
			long uid = (Long) getHibernateTemplate().save(order);
			getHibernateTemplate().flush();
			return uid + "";
		} catch (Exception e) {
			return null;
		}

	}

	public Orders chuLiOrder(String orderNum, int state) {
		try {
			String sql = "from Orders o where o.orderNum='" + orderNum + "'";
			Orders order = (Orders) getHibernateTemplate().find(sql).get(0);
			if (order != null) {
				order.setState(state);
				getHibernateTemplate().update(order);
				getHibernateTemplate().flush();
			}
			//addMessage2(order, order.getUser().getId());
			return order;
		} catch (Exception e) {
			return null;
		}

	}

	public boolean orderIsChuLi(String orderNum) {
		try {
			String sql = "from Orders o where o.orderNum='" + orderNum + "'";
			Orders order = (Orders) getHibernateTemplate().find(sql).get(0);
			if (order != null && order.getState() != 0) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			return false;
		}

	}

	public List<Orders> getHuoDongOrder(long uid) {
		String sql = "from Orders o where o.user.id="+uid+" and type=2 order by o.id desc";
		return getHibernateTemplate().find(sql);
	}

	public List<Orders> getHuoDong(int page,int type) {
		
		String sqlString = null;
		Date endDate = new Date();
		Calendar cl = Calendar.getInstance();
		cl.setTime(endDate);
		if (type == 1) {
			sqlString = "from Orders j WHERE date(j.time) = curdate() and j.type=2 order by j.id desc";
		} else if (type == 2) {
			cl.add(Calendar.DATE, -1);
			Date startDate = cl.getTime();
			SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
			// 格式化开始日期和结束日期
			String start = dd.format(startDate);
			String end = dd.format(endDate);

			sqlString = "from Orders j where j.time >= '" + start
					+ "' and j.time <= '" + end + "' and j.type=2 order by j.id desc";
		} else {
			
			sqlString = "from Orders j where j.type=2 order by j.id desc";
		}
		ActionContext.getContext().getSession()
				.put("huodong", getCount(sqlString));
		return getList(sqlString, page, 20);
	}
}
