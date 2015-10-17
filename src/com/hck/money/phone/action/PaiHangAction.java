package com.hck.money.phone.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.tomcat.util.buf.UDecoder;

import com.hck.money.bean.User;
import com.hck.money.bean.Usermoney;
import com.hck.money.dao.UserDao;
import com.hck.money.daoserver.UserMoneyServer;
import com.hck.money.vo.PaiHangBean;
import com.hck.money.vo.UserBean;

public class PaiHangAction extends BaseAction {
	private UserMoneyServer moneyServer;
	private List<PaiHangBean> paiHangBeans;
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public List<PaiHangBean> getPaiHangBeans() {
		return paiHangBeans;
	}

	public void setPaiHangBeans(List<PaiHangBean> paiHangBeans) {
		this.paiHangBeans = paiHangBeans;
	}

	public UserMoneyServer getMoneyServer() {
		return moneyServer;
	}

	public void setMoneyServer(UserMoneyServer moneyServer) {
		this.moneyServer = moneyServer;
	}

	public void getMoneyPaiHanP() {
		init();
		List<Usermoney> userMoney = moneyServer.getPH();
		if (userMoney != null && !userMoney.isEmpty()) {
			paiHangBeans = changeBean(userMoney);
		}
		if (paiHangBeans != null && !paiHangBeans.isEmpty()) {
			json.put("isok", true);
			json.put("data", paiHangBeans);
		} else {
			json.put("isok", false);
		}
		write();
	}

	/**
	 * 获取用户推广排行.
	 */
	public void getTGPaiHangP() {
		init();
		List<User> user = userDao.getPaiHang();
		if (user != null && !user.isEmpty()) {
			json.put("isok", true);
			json.put("data", changeBeans(user));
		} else {
			json.put("isok", false);
		}
		write();

	}

	private List<UserBean> changeBeans(List<User> users) {
		List<UserBean> userBeans = new ArrayList<UserBean>();
		UserBean user2 = null;
		for (int i = 0; i < users.size(); i++) {
			User user = users.get(i);
			user2 = new UserBean();
			user2.setId(user.getId());
			user2.setIsok(user.getIsok());
			user2.setMac(user.getMac());
			user2.setName(user.getNicheng());
			user2.setTg(user.getTj());
			user2.setQq(user.getQq());
			user2.setPhone(user.getPhone());
			user2.setZhifubao(user.getZhifubao());
			user2.setUserID(user.getUserID());
			user2.setTouxiang(user.getTouxiang());
			user2.setPushId(user.getPushid());
			userBeans.add(user2);
		}

		return userBeans;

	}

	private List<PaiHangBean> changeBean(List<Usermoney> usermoneys) {
		List<PaiHangBean> paiHangs = new ArrayList<PaiHangBean>();
		PaiHangBean paiHangBean = null;
		for (int i = 0; i < usermoneys.size(); i++) {
			paiHangBean = new PaiHangBean();
			Usermoney usermoney = usermoneys.get(i);
			long allMoney = usermoney.getAllmoney();

			paiHangBean.setAllMoney(allMoney + "");
			long tgMoney = usermoney.getTjmoney();
			String tgMoneyString = (((double) tgMoney) / 1000) + "";
			paiHangBean.setTgMoney(tgMoneyString);
			paiHangBean.setTgSize(usermoney.getUser().getTj() + "");
			paiHangBean.setTx(usermoney.getUser().getTouxiang());
			paiHangBean.setUid(usermoney.getUser().getId());
			paiHangBean.setUserName(usermoney.getUser().getNicheng());
			paiHangs.add(paiHangBean);
		}

		return paiHangs;

	}
}
