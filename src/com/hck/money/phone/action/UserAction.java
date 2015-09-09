package com.hck.money.phone.action;

import java.sql.Timestamp;
import java.text.DecimalFormat;

import com.hck.money.bean.Hongbao;
import com.hck.money.bean.Jilu;
import com.hck.money.bean.User;
import com.hck.money.bean.Usermoney;
import com.hck.money.dao.JiLuDao;
import com.hck.money.dao.UserDao;
import com.hck.money.dao.UserMoneyDao;
import com.hck.money.daoserver.HongBaoServer;
import com.hck.money.daoserver.TGAppServer;
import com.hck.money.util.StringUtils;
import com.hck.money.vo.UserBean;

public class UserAction extends BaseAction {
	private UserDao uDao;
	private UserMoneyDao userMoneyDao;
	private User user;
	private String imie;
	private Usermoney usermoney;
	private long uid;
	private JiLuDao jDao;
	private HongBaoServer hServer;
	private TGAppServer tServer;

	public TGAppServer gettServer() {
		return tServer;
	}

	public void settServer(TGAppServer tServer) {
		this.tServer = tServer;
	}

	public HongBaoServer gethServer() {
		return hServer;
	}

	public void sethServer(HongBaoServer hServer) {
		this.hServer = hServer;
	}

	public JiLuDao getjDao() {
		return jDao;
	}

	public void setjDao(JiLuDao jDao) {
		this.jDao = jDao;
	}

	public long getUid() {
		return uid;
	}

	public void setUid(long uid) {
		this.uid = uid;
	}

	public UserDao getuDao() {
		return uDao;
	}

	public void setuDao(UserDao uDao) {
		this.uDao = uDao;
	}

	public void addUserP() {

		usermoney = new Usermoney();
		User user2 = null;
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		imie = request.getParameter("mac");
		String phone = request.getParameter("phone");
		String initPoint = request.getParameter("point");
		String xh = request.getParameter("xh");
		long shangjia1 = getLongData("shangjia1");
		long shangjia2 = getLongData("shangjia2");
		long shangjia3 = getLongData("shangjia3");
		long shangjia4 = getLongData("shangjia4");
		long shangjia5 = getLongData("shangjia5");
		long point = 0;
		if (initPoint != null) {
			point = Long.parseLong(initPoint);
		}
		if (phone == null || "".equals(phone)) {
			phone = "无";
		}
		if (StringUtils.IsNull(imie)) {
			return;
		} else {
			user2 = uDao.isExit(imie);
			if (user2 == null) {
				user = new User();
				user.setPhone(phone);
				user.setMac(imie);
				user.setTime(new Timestamp(System.currentTimeMillis()));
				user.setXinghao(xh);
				if (imie.length() >= 7) {
					user.setNicheng("蝌蚪" + imie.substring(2, 7));
				} else {
					user.setNicheng("蝌蚪" + imie);
				}
				if (shangjia1 > 0) {
					tServer.updateTGUrlSize(shangjia1);
					user.setShangjia1(shangjia1);
					addHongBao(user.getShangjia1(), user.getNicheng());
					uDao.updateUserTgSize(shangjia1);
				}
				if (shangjia2 > 0) {
					user.setShangjia2(shangjia2);
					uDao.updateUserTgSize(shangjia2);
				}
				if (shangjia3 > 0) {
					user.setShangjia3(shangjia3);
					uDao.updateUserTgSize(shangjia3);
				}
				if (shangjia4 > 0) {
					user.setShangjia4(shangjia4);
					uDao.updateUserTgSize(shangjia4);
				}
				if (shangjia5 > 0) {
					user.setShangjia5(shangjia5);
					uDao.updateUserTgSize(shangjia5);
				}
				user.setIsok(1);
				user.setTj(0l);
				user2 = uDao.addUser(user);
				usermoney.setAllmoney(0l);
				usermoney.setAlljifeng(point);
				addMoney(user2, point);
				if (user2 != null) {
					addFirstRegestHongBao(user2.getId());
				}

			}
			if (user2 == null) {
				json.put("isok", false);
			} else {
				if (!userMoneyDao.isExit(user2.getId())) {
					addMoney(user2, point);
				}
				usermoney = userMoneyDao.getUsermoney(user2.getId());
				json.put("isok", true);
				json.put("user", changeBean(user2, usermoney));
			}
			write();
		}

	}

	private void addFirstRegestHongBao(long uid) {
		Hongbao hongbao = new Hongbao();
		hongbao.setContent("欢迎新用户，系统赠送您一个红包，推广用户可以获取无限红包哦" + "");
		hongbao.setIsOpen(0);
		hongbao.setPoint(100);
		hongbao.setIsXiTong(1);
		hongbao.setTime(new Timestamp(System.currentTimeMillis()).toString());
		hongbao.setUid(uid);
		hongbao.setuName("系统");
		hServer.addHongBao(hongbao);
	}

	private void addHongBao(long uid, String uname) {
		Hongbao hongbao = new Hongbao();
		hongbao.setContent("用户安装您的推广包，您获得一个红包,拆开可以获取金币");
		hongbao.setIsOpen(0);
		hongbao.setPoint(100);
		hongbao.setIsXiTong(0);
		hongbao.setTime(new Timestamp(System.currentTimeMillis()).toString());
		hongbao.setUid(uid);
		hongbao.setuName(uname);
		hServer.addHongBao(hongbao);
	}

	public UserMoneyDao getUserMoneyDao() {
		return userMoneyDao;
	}

	public void setUserMoneyDao(UserMoneyDao userMoneyDao) {
		this.userMoneyDao = userMoneyDao;
	}

	private void addMoney(User user2, long point) {
		Usermoney usermoney = new Usermoney();
		usermoney.setUser(user2);
		usermoney.setAlljifeng(point);
		usermoney.setAllmoney(0l);
		usermoney.setTjmoney(0l);
		usermoney.setToayjifeng(0l);
		userMoneyDao.addUserMoney(usermoney);
	}

	public void updateUserNiChengP() {
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		String nc = request.getParameter("nicheng");
		if (nc == null || "".equals(nc)) {
			return;
		}
		user = uDao.updateUser(nc, uid);
		if (user == null) {
			json.put("isok", false);
		} else {
			json.put("isok", true);
		}
		write();
	}

	public void addYQMP() {
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		String yqmString = request.getParameter("yqm");
		String jinbi = request.getParameter("jinbi");
		int money = Integer.parseInt(jinbi);
		User user = uDao.getOneUser(uid);
		if (yqmString == null || "".equals(yqmString)) {
			json.put("isok", false);
		} else {
			boolean b = uDao.addYQM(user, yqmString, money);
			if (b) {
				json.put("isok", true);
			} else {
				json.put("isok", false);
			}
		}
		write();

	}

	private UserBean changeBean(User user, Usermoney usermoney) {
		UserBean user2 = new UserBean();
		user2.setId(user.getId());
		user2.setIsok(user.getIsok());
		user2.setMac(user.getMac());
		user2.setName(user.getNicheng());
		user2.setTg(user.getTj());
		user2.setXinshou(user.getXinshou());
		user2.setQq(user.getQq());
		user2.setPhone(user.getPhone());
		user2.setZhifubao(user.getZhifubao());
		double tgMoney = usermoney.getTjmoney() / 1000.00;
		String TG = new String(tgMoney + "");
		TG = TG.substring(0, TG.indexOf(".") + 2);
		user2.setTGMoney(TG);
		if (user.getShangjia1() != null) {
			user2.setShangjia1(user.getShangjia1());
		}
		if (user.getShangjia2() != null) {
			user2.setShangjia2(user.getShangjia2());
		}
		if (user.getShangjia3() != null) {
			user2.setShangjia3(user.getShangjia3());
		}
		if (user.getShangjia4() != null) {
			user2.setShangjia4(user.getShangjia4());
		}
		if (user.getShangjia5() != null) {
			user2.setShangjia5(user.getShangjia5());
		}
		if (usermoney != null) {
			user2.setAllMoney(usermoney.getAllmoney());
			user2.setKedoubi(usermoney.getAlljifeng());
		}
		user2.setChoujiang(user.getChoujiang());
      
		return user2;

	}

	public void updateUser() {
		init();
		String uid = request.getParameter("uid");
		String nicheng = request.getParameter("nicheng");
		String phone = request.getParameter("phone");
		String qqString = request.getParameter("qq");
		String zhifubao = request.getParameter("zhifubao");
		long id = Long.parseLong(uid);
		User user = uDao.getOneUser(id);
		user.setNicheng(nicheng);
		user.setPhone(phone);
		user.setQq(qqString);
		user.setZhifubao(zhifubao);
		boolean b = uDao.updateUser(user);
		if (b) {
			json.put("isok", true);
		} else {
			json.put("isok", false);
		}
		write();
		user = null;
	}

	public void updateUserShareQQ() {
		init();
		String uid = request.getParameter("uid");
		String jinbi = request.getParameter("jinbi");
		String typeString = request.getParameter("type");
		int type = Integer.parseInt(typeString);
		long id = Long.parseLong(uid);
		User user = uDao.getOneUser(id);
		boolean b = uDao.updateUser(user);
		if (b) {
			addMoney(Long.parseLong(uid), Long.parseLong(jinbi), typeString);
			if (b) {
				json.put("isok", true);
				json.put("type", typeString);
			} else {
				json.put("isok", false);
				json.put("type", typeString);
			}
		}
		write();
		user = null;
	}

	public void updateChouJiang() {
		init();
		long uid = getLongData("uid");
		int choujiangSize = getIntData("cjSize");
		boolean isok = uDao.updateChouJiang(uid, choujiangSize);
		if (isok) {
			json.put("isok", true);
		} else {
			json.put("isok", false);
		}
		write();
	}

	private void addJilu(Long jifeng, String type) {
		Jilu jilu = new Jilu();
		jilu.setJifeng(jifeng);
		jilu.setTime(new Timestamp(System.currentTimeMillis()));
		jilu.setType(type);
		jilu.setUid(uid);
		jilu.setKid(1000);
		jDao.addJL(jilu);
	}

	private void addMoney(long uid, long jinbi, String type) {
		Usermoney usermoney = userMoneyDao.getUsermoney(uid);
		usermoney.setAlljifeng(usermoney.getAlljifeng() + jinbi);
		boolean b = userMoneyDao.updateMoney(usermoney);
		if (b) {
			addJilu(jinbi, type);
		}
	}

}
