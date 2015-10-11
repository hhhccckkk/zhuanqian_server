package com.hck.money.phone.action;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.hck.money.bean.Jilu;
import com.hck.money.bean.Tg;
import com.hck.money.bean.Usermoney;
import com.hck.money.dao.JiLuDao;
import com.hck.money.dao.UserMoneyDao;
import com.hck.money.daoserver.TgServer;
import com.hck.money.vo.UserMoneyBean;

public class UserMoneyAction extends BaseAction {
	private static final int HONGBAO = 100;
	private static final int CHOUJIANG = 101;
	private long uid;
	private UserMoneyDao userMoneyDao;
	private JiLuDao jDao;
	private TgServer tgServer;

	public TgServer getTgServer() {
		return tgServer;
	}

	public void setTgServer(TgServer tgServer) {
		this.tgServer = tgServer;
	}

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
		int kid = getIntData("kid");
		int xt = getIntData("isxt");
		String userName = getStringData("userName");
		long shangjia1 = getLongData("shangjia1");
		long shangjia2 = getLongData("shangjia2");
		long shangjia3 = getLongData("shangjia3");
		long shangjia4 = getLongData("shangjia4");
		long shangjia5 = getLongData("shangjia5");
		long shangjia6 = getLongData("shangjia6");
		long shangjia7 = getLongData("shangjia7");
		long shangjia8 = getLongData("shangjia8");
		long jinbi = Long.parseLong(kedoubi);
		int num = Integer.parseInt(request.getParameter("num"));
		if (kedoubi == null || "".equals(kedoubi) || type == null) {
			json.put("isok", false);
			write();
			return;
		}
		if (kid == HONGBAO) {
			boolean istg = true;
			if (xt == 1) {
				istg = false;
			}
			addMoney(uid, type, jinbi, kid, istg, false);
		} else if (kid == CHOUJIANG) {
			addMoney(uid, type, jinbi, kid, false, false);
		} else {
			if (jDao.getCount(uid, kid) >= num) {
				json.put("isok", true);
				json.put("type", 1);
				write();
			} else {
				addMoney(uid, type, jinbi, kid, false, true);
				addTgJinBi(shangjia1, shangjia2, shangjia3, shangjia4,
						shangjia5, shangjia6, shangjia7, shangjia8, userName,
						type, jinbi);
			}
		}

	}

	private void addTgJinBi(long shangjia1, long shangjia2, long shangjia3,
			long shangjia4, long shangjia5, long shangjia6, long shangjia7,
			long shangjia8, String userName, String adName, long jinbi) {
		long tgJinbi = (long) (jinbi * 0.1);
		if (shangjia1 > 0) {
			addTGMessage(userName, adName, shangjia1, 1, tgJinbi);
			userMoneyDao.updateMoney(shangjia1, tgJinbi, 1, true);

		}
		if (shangjia2 > 0) {
			addTGMessage(userName, adName, shangjia2, 2, tgJinbi);
			userMoneyDao.updateMoney(shangjia2, tgJinbi, 1, true);

		}
		if (shangjia3 > 0) {
			addTGMessage(userName, adName, shangjia3, 3, tgJinbi);
			userMoneyDao.updateMoney(shangjia3, tgJinbi, 1, true);

		}
		if (shangjia4 > 0) {
			addTGMessage(userName, adName, shangjia4, 4, tgJinbi);
			userMoneyDao.updateMoney(shangjia4, tgJinbi, 1, true);

		}
		if (shangjia5 > 0) {
			addTGMessage(userName, adName, shangjia5, 5, tgJinbi);
			userMoneyDao.updateMoney(shangjia5, tgJinbi, 1, true);

		}
		if (shangjia6 > 0) {
			addTGMessage(userName, adName, shangjia6, 6, tgJinbi);
			userMoneyDao.updateMoney(shangjia6, tgJinbi, 1, true);

		}
		if (shangjia7 > 0) {
			addTGMessage(userName, adName, shangjia7, 7, tgJinbi);
			userMoneyDao.updateMoney(shangjia7, tgJinbi, 1, true);

		}
		if (shangjia8 > 0) {
			addTGMessage(userName, adName, shangjia8, 8, tgJinbi);
			userMoneyDao.updateMoney(shangjia8, tgJinbi, 1, true);

		}

	}

	private void addTGMessage(String uName, String adname, long uid, int jishu,
			long jinbi) {
		Tg tg = new Tg();
		tg.setUid(uid);
		tg.setContent("您的推广用户" + jishu + "级徒弟" + uName + "完成" + adname
				+ "平台任务,您获取推广金币: " + jinbi + "个=" + jinbi * 0.001 + "元");
		tg.setTime(new Timestamp(System.currentTimeMillis()));
		tg.setUserName(jishu + "级徒弟" + uName);
		tgServer.addTg(tg);
	}

	// type 0 失败，1数量超过限制，2成功
	private void addMoney(long uid, String type, long jf, int kid,
			boolean isTG, boolean isAddJiLU) {
		boolean b = userMoneyDao.updateMoney(uid, jf, 1, isTG);
		if (isAddJiLU) {
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
		} else {
			if (b) {
				json.put("isok", true);
				json.put("type", 2);
			} else {
				json.put("isok", false);
				json.put("type", 0);

			}
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
