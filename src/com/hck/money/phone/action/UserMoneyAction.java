package com.hck.money.phone.action;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.hck.money.bean.Jilu;
import com.hck.money.bean.Usermoney;
import com.hck.money.dao.JiLuDao;
import com.hck.money.dao.UserMoneyDao;
import com.hck.money.vo.UserMoneyBean;

import net.sf.json.JSONObject;

public class UserMoneyAction extends BaseAction {

	private long uid;
	private UserMoneyDao userMoneyDao;
	private JiLuDao jDao;

	public JiLuDao getjDao() {
		return jDao;
	}

	public void setjDao(JiLuDao jDao) {
		this.jDao = jDao;
	}

	List<UserMoneyBean> userMoneyBeans;

	public long getUid() {
		return uid;
	}

	public void setUid(long uid) {
		this.uid = uid;
	}

	public UserMoneyDao getUserMoneyDao() {
		return userMoneyDao;
	}

	public void setUserMoneyDao(UserMoneyDao userMoneyDao) {
		this.userMoneyDao = userMoneyDao;
	}

	public void getMoneyRankP() {
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		List<Usermoney> usermoneys = userMoneyDao.getPH();
		if (usermoneys == null || usermoneys.isEmpty()) {
			json.put("isok", false);
		} else {
			json.put("isok", true);
			json.put("usermoneys", changeBean(usermoneys));
		}
		write();
	}

	public void getMoneyTJP() {
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		List<Usermoney> usermoneys = userMoneyDao.getTG();
		if (usermoneys == null || usermoneys.isEmpty()) {
			json.put("isok", false);
		} else {
			json.put("isok", true);
			json.put("usermoneys", changeBean(usermoneys));
		}
		write();
	}

	public void addMoneyP() {
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		String kedoubi = request.getParameter("money");
		String type = request.getParameter("type");
		String kid = request.getParameter("kid");
		int kindid = Integer.parseInt(kid);
		String isTgString = request.getParameter("isTg");
		boolean isTg = false;
		if (isTgString != null) {
			isTg = true;
		}
		int num = Integer.parseInt(request.getParameter("num"));

		if (kedoubi == null || "".equals(kedoubi) || type == null) {
			json.put("isok", false);
			write();
			return;
		}

		if (jDao.getCount(uid, kindid) >= num) {
			json.put("isok", true);
			json.put("type", 1);
			write();
		} else {
			addMoney(uid, type, Long.parseLong(kedoubi), kindid, isTg);
		}

	}

	// type 0 失败，1数量超过限制，2成功
	private void addMoney(long uid, String type, long jf, int kid, boolean isTG) {
		boolean b = userMoneyDao.updateMoney(uid, jf, 1, isTG);
		try {
			if (b) {
				Jilu jilu = new Jilu();
				jilu.setJifeng(jf);
				jilu.setTime(new Timestamp(System.currentTimeMillis()));
				jilu.setType(type);
				jilu.setUid(uid);
				jilu.setKid(kid);
				jDao.addJL(jilu);
				json.put("isok", true);
				json.put("type", 2);
			} else {
				json.put("isok", false);
				json.put("type", 0);
			}
		} catch (Exception e) {
			json.put("isok", false);
			json.put("type", 0);
		}

		write();
	}

	private List<UserMoneyBean> changeBean(List<Usermoney> bList) {

		userMoneyBeans = new ArrayList<UserMoneyBean>();
		UserMoneyBean usermoney = null;
		for (int i = 0; i < bList.size(); i++) {
			usermoney = new UserMoneyBean();
			usermoney.setTodayjifeng(bList.get(i).getToayjifeng());
			usermoney.setAllMoney(bList.get(i).getAllmoney());
			usermoney.setId(bList.get(i).getId());
			usermoney.setTjMoney(bList.get(i).getTjmoney());
			usermoney.setAllJiFeng(bList.get(i).getAlljifeng());
			usermoney.setUid(bList.get(i).getUser().getId());
			usermoney.setName(bList.get(i).getUser().getNicheng());
			usermoney.setTg(bList.get(i).getUser().getTj());
			userMoneyBeans.add(usermoney);
		}
		return userMoneyBeans;
	}

}
