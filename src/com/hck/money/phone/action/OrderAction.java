package com.hck.money.phone.action;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

import com.hck.money.bean.Orders;
import com.hck.money.bean.User;
import com.hck.money.bean.Usermoney;
import com.hck.money.dao.OrderDao;
import com.hck.money.dao.UserMoneyDao;
import com.hck.money.vo.OrderBean;

public class OrderAction extends BaseAction {
	private JSONObject json;
	private String jsonString;
	private HttpServletRequest request = null;
	private HttpServletResponse response = null;
	private List<Orders> orders;
	private OrderDao oDao;
	private UserMoneyDao moneyDao;

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

	private void write() {

		jsonString = json.toString();
		OutputStream oStream = null;
		try {
			oStream = response.getOutputStream();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		try {
			oStream.write(jsonString.getBytes("UTF-8"));
			oStream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		response=null;
		request=null;
	}

	public void getOrdersP() {
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		orders = oDao.getEndOrders(1);
		if (orders == null || orders.isEmpty()) {
			json.put("isok", false);
		} else {
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
		orders = oDao.getChuLiOrdersP(id);
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
			String tjKeDouBiString=request.getParameter("tjmoney");
			String uName=request.getParameter("userName");
			
			money = Long.parseLong(kedoubiString);
			Usermoney usermoney = moneyDao.getUsermoney(id);
			
			if (usermoney==null || usermoney.getAlljifeng() < money) {
				json.put("isok", false);
			} else {
				String yqm = request.getParameter("yqm");
				Orders orderBean = new Orders();
				orderBean.setContent(content);
				orderBean.setTime(new Timestamp(System.currentTimeMillis()));
				orderBean.setIsmy(0);
				orderBean.setKedoubi(Long.parseLong(kedoubiString));
				orderBean.setState(0);
				orderBean.setYqm(yqm);
				User user = new User();
				user.setId(id);
				orderBean.setUser(user);
				boolean b = oDao.addOrder(orderBean);
				if (b) {
					moneyDao.updateMoney(id, Long.parseLong(kedoubiString), 2);
					if (uName!=null && tjKeDouBiString!=null ) {
						long point=Long.parseLong(tjKeDouBiString);
						if (point>0) {
							moneyDao.addTJMoney(uName,point,yqm);
						}
					}
					json.put("isok", true);

				} else {
					json.put("isok", false);
				}
			}
		} catch (Exception e) {
		
		}
		
		write();		
	}
	private void saveTg()
	{
		
	}
 public void deleteOrderP()
 
 {
	 init();
	boolean b=oDao.deleteOrderP(id);
	if (b) {
		json.put("isok", true);
	}
	else {
		json.put("isok", false);
	}
	write();
 }
	private List<OrderBean> changeBean(List<Orders> orders) {
		OrderBean bean = null;
		List<OrderBean> orders3 = new ArrayList<OrderBean>();
		for (int i = 0; i < orders.size(); i++) {
			bean = new OrderBean();
			bean.setId(orders.get(i).getId());
			bean.setContent(orders.get(i).getContent());
			bean.setTimestamp(orders.get(i).getTime().toString());
			bean.setUserName(orders.get(i).getUser().getNicheng());
			orders3.add(bean);

		}
		return orders3;
	}

}
