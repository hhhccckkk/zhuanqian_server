package com.hck.money.phone.action;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

import com.hck.money.bean.Orders;
import com.hck.money.bean.User;
import com.hck.money.bean.Usermoney;
import com.hck.money.dao.OrderDao;
import com.hck.money.dao.UserMoneyDao;
import com.hck.money.daoserver.HongBaoServer;
import com.hck.money.duihuanba.CreditTool;
import com.hck.money.vo.Contans;
import com.hck.money.vo.OrderBean;

public class OrderAction extends BaseAction {

	private List<Orders> orders;
	private OrderDao oDao;
	private UserMoneyDao moneyDao;
	private HongBaoServer hServer;

	public HongBaoServer gethServer() {
		return hServer;
	}

	public void sethServer(HongBaoServer hServer) {
		this.hServer = hServer;
	}

	private int page;

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public UserMoneyDao getMoneyDao() {
		return moneyDao;
	}

	public void setMoneyDao(UserMoneyDao moneyDao) {
		this.moneyDao = moneyDao;
	}

	private long id;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public OrderDao getoDao() {
		return oDao;
	}

	public void setoDao(OrderDao oDao) {
		this.oDao = oDao;
	}

	public void init() {
		json = new JSONObject();
		response = ServletActionContext.getResponse();
		request = ServletActionContext.getRequest();
		response.setContentType("text/json;charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

	}

	public void getOrdersP() {
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		orders = oDao.getNewOrders();
		if (orders == null || orders.isEmpty()) {
			json.put("isok", false);
		} else {
			json.put("isok", true);
			json.put("orders", changeBean(orders));
		}
		write();

	}

	public void getUserNoOrderP() {
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		orders = oDao.getNoChuLiOrdersP(id);
		if (orders == null || orders.isEmpty()) {
			json.put("isok", false);
		} else {
			json.put("isok", true);
			json.put("orders", changeBean(orders));
		}
		write();
	}

	public void getUserYesOrderP() {
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		orders = oDao.getChuLiOrdersP(id, page);
		if (orders == null || orders.isEmpty()) {
			json.put("isok", false);
		} else {
			json.put("isok", true);
			json.put("orders", changeBean(orders));
		}
		write();
	}

	public void addOrderP() {
		try {
			long money = 0l;
			init();
			if (!isPasswordOk(request.getParameter("password"))) {
				return;
			}
			String content = request.getParameter("content");
			String kedoubiString = request.getParameter("money");
			String info = getStringData("info");
			money = Long.parseLong(kedoubiString);
			Usermoney usermoney = moneyDao.getUsermoney(id);
			if (usermoney == null || usermoney.getAlljifeng() < money
					|| money < 0) {
				json.put("isok", true);
				json.put("jinbi", -1);
			} else {
				Orders orderBean = new Orders();
				orderBean.setContent(content);
				orderBean.setTime(new Timestamp(System.currentTimeMillis()));
				orderBean.setIsmy(0);
				orderBean.setKedoubi(Long.parseLong(kedoubiString));
				orderBean.setInfo(info);
				orderBean.setState(0);
				User user = new User();
				user.setId(id);
				orderBean.setUser(user);
				boolean b = oDao.addOrder(orderBean);
				if (b) {
					moneyDao.updateMoney(id, Long.parseLong(kedoubiString), 2,true);
					json.put("isok", true);
					json.put("jinbi", 0);

				} else {
					json.put("isok", false);
				}
			}
		} catch (Exception e) {
			json.put("isok", false);
		}

		write();
	}

	public void deleteOrderP()

	{
		init();
		boolean b = oDao.deleteOrderP(id);
		if (b) {
			json.put("isok", true);
		} else {
			json.put("isok", false);
		}
		write();
	}

	private List<OrderBean> changeBean(List<Orders> orders) {
		OrderBean bean = null;
		List<OrderBean> orders3 = new ArrayList<OrderBean>();
		for (int i = 0; i < orders.size(); i++) {
			bean = new OrderBean();
			Orders orders2 = orders.get(i);
			bean.setId(orders2.getId());
			bean.setContent(orders2.getContent());
			bean.setTimestamp(orders2.getTime().toString());
			bean.setUserName(orders2.getUser().getNicheng());
			bean.setTx(orders2.getUser().getTouxiang());
			if (orders2.getState() == 0) {
				bean.setChuLi(false);
			} else {
				bean.setChuLi(true);
			}
			orders3.add(bean);

		}
		return orders3;
	}

	public void getUserAllOrders() {
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		long uid = getLongData("uid");
		int page = getIntData("page");
		orders = oDao.getUserOrderP(uid, page);
		if (orders == null || orders.isEmpty()) {
			json.put("isok", false);
		} else {
			json.put("isok", true);
			json.put("orders", changeBean(orders));
		}
		write();


	}
	
	public void jieShouTongZhi(){
		init();
		System.out.print("jieShouTongZhi: "+getStringData("uid"));
		System.out.print("jieShouTongZhi: "+getStringData("orderNum"));
	}

}
