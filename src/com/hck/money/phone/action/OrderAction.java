package com.hck.money.phone.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.tomcat.util.buf.UDecoder;

import com.hck.money.bean.Message;
import com.hck.money.bean.Orders;
import com.hck.money.bean.User;
import com.hck.money.bean.Usermoney;
import com.hck.money.dao.OrderDao;
import com.hck.money.dao.UserMoneyDao;
import com.hck.money.daoserver.HongBaoServer;
import com.hck.money.daoserver.OrderServer;
import com.hck.money.duihuanba.CreditConsumeParams;
import com.hck.money.duihuanba.CreditConsumeResult;
import com.hck.money.duihuanba.CreditNotifyParams;
import com.hck.money.duihuanba.CreditTool;
import com.hck.money.push.BaiduPushManger;
import com.hck.money.vo.Contans;
import com.hck.money.vo.OrderBean;

public class OrderAction extends BaseAction {

	private List<Orders> orders;
	private OrderServer oDao;
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

	public OrderServer getoDao() {
		return oDao;
	}

	public void setoDao(OrderServer oDao) {
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
					moneyDao.updateMoney(id, Long.parseLong(kedoubiString), 2,
							true);
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

	@SuppressWarnings("unchecked")
	public void getLoginUrl() {
		init();
		String url = null;
		long uid = getLongData("uid");
		long point = getLongData("point");
		if (uid <= 0) {
			json.put("isok", false);
		} else {
			CreditTool tool = new CreditTool(Contans.DUIHUANG_BA_KEY,
					Contans.DUIHUANG_BA_Secret);
			Map params = new HashMap();
			params.put("uid", uid + "");
			params.put("credits", point + "");
			String redirect = "http://www.duiba.com.cn/chome/index";
			params.put("redirect", redirect);
			url = tool.buildUrlWithSign(
					"http://www.duiba.com.cn/autoLogin/autologin?", params);
			json.put("isok", true);
			json.put("url", url);
		}
		write();

	}

	/**
	 * 兑吧,增加订单.
	 */
	public void chuLiOrder() {
		
		init();
		CreditTool tool = new CreditTool(Contans.DUIHUANG_BA_KEY,
				Contans.DUIHUANG_BA_Secret);
		int orderType = Contans.ORDER_ORDER;
		try {
			CreditConsumeParams params = tool.parseCreditConsume(request);// 利用tool来解析这个请求
			String uid = params.getUid();// 用户id
			Long credits = params.getCredits();
			String type = params.getType();// 获取兑换类型
			String description = params.getDescription();
			String orderNum = params.getOrderNum();
			String content = null;
			String info = null;
			int size = (int) (credits / 1000);
			if (type.equals("alipay")) {
				content = "提现支付宝" + size + "元";
				info = "支付宝帐号:" + params.getAlipay() + "提现: " + size + "元";
			} else if (type.equals("qb")) {
				content = "兑换Q币" + size + "个";
				info = "QQ号码:" + params.getQq() + "兑换: " + size + "个";
			} else if (type.equals("phonebill")) {
				content = "提现话费" + size + "元";
				info = "电话号码:" + params.getPhone() + "提现: " + size + "元";
			} else {
				info = description;
				content = description;
				orderType = Contans.ORDER_HUODONG;
			}
			String bizId = null;
			if (orderType == Contans.ORDER_ORDER) {
				bizId = addOrderDuiBa(content, credits, info,
						Long.parseLong(uid), orderNum, orderType);
			} else {
			      addOrderDuiBa(content, credits, info,
						Long.parseLong(uid), "", orderType);
				bizId = uid +System.currentTimeMillis();
			}

			if (bizId != null) {
				boolean b = moneyDao.updateMoney(Long.parseLong(uid), credits,
						2, false);
				if (b) {
					CreditConsumeResult result = new CreditConsumeResult(true);
					result.setBizId(bizId);
					response.getWriter().write(result.toString());
				}
			} 

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	private String addOrderDuiBa(String content, long jinbi, String info,
			long uid, String orderNum, int type) {
		Orders orderBean = new Orders();
		orderBean.setContent(content);
		orderBean.setTime(new Timestamp(System.currentTimeMillis()));
		orderBean.setIsmy(0);
		orderBean.setKedoubi(jinbi);
		orderBean.setInfo(info);
		orderBean.setOrderNum(orderNum);
		orderBean.setType(type);
		orderBean.setState(0);
		User user = new User();
		user.setId(uid);
		orderBean.setUser(user);
		String orderId = oDao.addOrderDuiBa(orderBean);
		return orderId;
	}

	/**
	 * 接收兑吧返回的订单处理通知.
	 */
	public void jieShouTongZhi() {
		init();
		CreditTool tool = new CreditTool(Contans.DUIHUANG_BA_KEY,
				Contans.DUIHUANG_BA_Secret);

		try {
			CreditNotifyParams params = tool.parseCreditNotify(request);// 利用tool来解析这个请求
			String orderNum = params.getOrderNum();
			String errorMsg = params.getErrorMessage();

			if (orderIsChuLi(orderNum)) {
				return;
			}
			if (params.isSuccess()) {
				chuLiOrderOK(orderNum, Contans.DUIHUAN_SUCCESS, null);
				// 兑换成功
			} else {
				// 兑换失败，根据orderNum，对用户的金币进行返还，回滚操作
				if (Contans.ERROR_MSG.equals(errorMsg)) {
					chuLiOrderOK(orderNum, Contans.DUIHUAN_ERROR_SHEHE,
							errorMsg);
				} else {
					chuLiOrderOK(orderNum, Contans.DUIHUAN_ERROR_OTHER,
							errorMsg);
				}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void chuLiOrderOK(String orderNum, int state, String errorMsg) {
		Orders order = oDao.chuLiOrder(orderNum, state);
		if (order != null) {
			long uid = order.getUser().getId();
			if (state == Contans.DUIHUAN_ERROR_OTHER) {// 失败,不是审核失败
				moneyDao.updateMoney(uid, order.getKedoubi(), 1, false);
				String errorMsgContent = "您的订单处理失败,我们已返回您相应金币." + errorMsg;
				BaiduPushManger.sendMsgToOneUser(order.getUser().getPushid(),
						Contans.PUSH_TYPE_MSG, "金币返回", errorMsg);
				addMsg(errorMsgContent, uid);

			} else if (state == Contans.DUIHUAN_ERROR_SHEHE) {
				String errorMsgContent = "您的订单审核失败,请检查是否存在刷量行为,有疑问请联系客服处理";
				BaiduPushManger.sendMsgToOneUser(order.getUser().getPushid(),
						Contans.PUSH_TYPE_MSG, "订单审核失败", errorMsgContent);
				addMsg(errorMsgContent, uid);
			} else {// 成功
				BaiduPushManger.sendMsgToOneUser(order.getUser().getPushid(),
						Contans.PUSH_TYPE_MSG, "订单处理完成", "您的订单已经成功处理,请查收是否到帐");
			}
		}
		try {
			response.getWriter().write("ok");
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	private void addMsg(String errorMsg, long uid) {
		Message message = new Message();
		message.setContent(errorMsg);
		message.setLaizi("系统");
		message.setState(0);
		message.setType(Contans.MSG_TYPE_XITONG);
		message.setTime(new Timestamp(System.currentTimeMillis()));
		message.setUid(uid);
		oDao.addMessage(message);
	}

	private boolean orderIsChuLi(String orderNum) {
		return oDao.orderIsChuLi(orderNum);
	}

}
