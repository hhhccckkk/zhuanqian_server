package com.hck.money.pc.action;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.omg.CORBA.SystemException;

import com.hck.money.bean.Orders;
import com.hck.money.bean.User;
import com.hck.money.dao.OrderDao;
import com.opensymphony.xwork2.ActionContext;

@SuppressWarnings("serial")
public class OrderAction extends BaseAction {
	private List<Orders> ordList;
	private Orders oneOrders;
	private OrderDao oDao;
	private String idString;
    private long uid;
    
	public long getUid() {
		return uid;
	}

	public void setUid(long uid) {
		this.uid = uid;
	}

	public String getIdString() {
		return idString;
	}

	public void setIdString(String idString) {
		this.idString = idString;
	}

	public List<Orders> getOrdList() {
		return ordList;
	}

	public void setOrdList(List<Orders> ordList) {
		this.ordList = ordList;
	}

	public Orders getOneOrders() {
		return oneOrders;
	}

	public void setOneOrders(Orders oneOrders) {
		this.oneOrders = oneOrders;
	}

	public OrderDao getoDao() {
		return oDao;
	}

	public void setoDao(OrderDao oDao) {
		this.oDao = oDao;
	}

	public String getEndOrder() {
		ordList = oDao.getEndOrders(page);
		if (ordList != null && !ordList.isEmpty()) {
			ActionContext.getContext().getSession().put("orderPage", page);
		}
		return SUCCESS;
	}

	public String showOverOrder() {
		ordList = oDao.getNoChuLiOrders(page);
		ordList=changeBean(ordList);
		if (ordList != null && !ordList.isEmpty()) {
			ActionContext.getContext().getSession().put("orderPage", page);
		}
		return SUCCESS;
	}

	public String dealOrder() {
		boolean b = oDao.dealOrder(id);
		if (b) {
			addActionError("¥¶¿Ì ß∞‹");
		}
		return SUCCESS;
	}

	public String getMyOrder() {
		ordList = oDao.getMyOrders(page);
		return SUCCESS;

	}

	public String deleteOrder() {
		if (null != idString) {
			String[] id = idString.split(",");
			for (int j = 0; j < id.length; j++) {
				oDao.deleteOrder(Integer.parseInt(id[j]));
			}
			return SUCCESS;
		} else if (id != 0) {
			oDao.deleteOrder(id);
			return SUCCESS;
		}
		addActionError("Œ¥÷™¥ÌŒÛ");
		return ERROR;
	}

	public String addOrder() {
		oneOrders.setIsmy(1);
		oneOrders.setState(1);
		oneOrders.setTime(new Timestamp(System.currentTimeMillis()));
		User user = new User();
		user.setId((long) (new Random().nextInt(49)));
		oneOrders.setUser(user);
		oDao.addOrder(oneOrders);
		return SUCCESS;
	}

	public String searchOrder() {
		oneOrders = oDao.searchOrder(id);
		return SUCCESS;
	}

	private List<Orders> changeBean(List<Orders> orders) {
		List<Orders> orders2 = new ArrayList<Orders>();
		Orders orders3 = null;
		for (int i = 0; i < orders.size(); i++) {
			orders3 = new Orders();
			orders3 = orders.get(i);
			orders3.setContent(orders.get(i).getContent().replace("h", "   "));
			orders2.add(orders3);
		}
		return orders2;
	}
	public String getUserOrder() {
		ordList=null;
		ordList = oDao.getUserOrder(uid);
		ordList=changeBean(ordList);
		return SUCCESS;
	}

}
