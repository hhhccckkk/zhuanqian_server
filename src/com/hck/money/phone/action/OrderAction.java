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

import com.hck.money.bean.Hongbao;
import com.hck.money.bean.Orders;
import com.hck.money.bean.User;
import com.hck.money.bean.Usermoney;
import com.hck.money.dao.OrderDao;
import com.hck.money.dao.UserMoneyDao;
import com.hck.money.daoserver.HongBaoServer;
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
			String uName = request.getParameter("userName");
			long shangjia1 = getLongData("shangjia1");
			long shangjia2 = getLongData("shangjia2");
			long shangjia3 = getLongData("shangjia3");
			long shangjia4 = getLongData("shangjia4");
			long shangjia5 = getLongData("shangjia5");
			int qBiSize = getIntData("size");
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
				orderBean.setState(0);
				User user = new User();
				user.setId(id);
				user.setNicheng(uName);
				orderBean.setUser(user);
				boolean b = oDao.addOrder(orderBean);
				if (b) {
					moneyDao.updateMoney(id, Long.parseLong(kedoubiString), 2,true);
					addHongBao(shangjia1, shangjia2, shangjia3, shangjia4,
							shangjia5, uName, (int) (qBiSize * 0.1 * 1000));
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

	private void addHongBao(Long shangjia1, Long shangjia2, Long shangjia3,
			Long shangjia4, Long shangjia5, String uName, int point) {
		if (shangjia1 > 0) {
			addHongBao(uName, shangjia1, point, 1);
		}
		if (shangjia2 > 0) {
			addHongBao(uName, shangjia2, point, 2);
		}
		if (shangjia3 > 0) {
			addHongBao(uName, shangjia3, point, 3);
		}
		if (shangjia4 > 0) {
			addHongBao(uName, shangjia4, point, 4);
		}
		if (shangjia5 > 0) {
			addHongBao(uName, shangjia5, point, 5);
		}
	}

	private void addHongBao(String uName, Long shangjia, int point, int postion) {
		Hongbao hongbao = null;
		hongbao = new Hongbao();
		hongbao.setContent("您的" + postion + "级推广用户" + uName + "兑换账单成功,您获取一个红包");
		hongbao.setUid(shangjia);
		hongbao.setIsOpen(0);
		hongbao.setPoint(point);
		hongbao.setuName(uName);
		hongbao.setTime(new Timestamp(System.currentTimeMillis()).toString());
		hServer.addHongBao(hongbao);
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

}
