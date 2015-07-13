package com.hck.money.phone.action;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

import com.hck.money.bean.Jilu;
import com.hck.money.bean.User;
import com.hck.money.bean.Usermoney;
import com.hck.money.dao.JiLuDao;
import com.hck.money.dao.UserDao;
import com.hck.money.dao.UserMoneyDao;
import com.hck.money.util.StringUtils;
import com.hck.money.vo.UserBean;

public class UserAction extends BaseAction {
	private static final int SHARE_QQ=1;
	private static final int YAOQING_QQ=2;
	private static final int SHARE_XIN_LANG=3;
	private int flag;
	private JSONObject json;
	private String jsonString;
	private HttpServletRequest request = null;
	private HttpServletResponse response = null;
	private UserDao uDao;
	private UserMoneyDao userMoneyDao;
	private User user;
	private String imie;
	private Usermoney usermoney = new Usermoney();
	private long uid;
    private JiLuDao jDao;
    

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

	public void init() {
		json = new JSONObject();
		if (response == null) {
			response = ServletActionContext.getResponse();
		}
		if (request == null) {
			request = ServletActionContext.getRequest();
		}
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
		} finally {
			try {
				if (oStream != null) {

				}
				oStream.close();
			} catch (Exception e2) {
			}

		}
		response = null;
		request = null;
	}

	public synchronized void addUserP() {
		User user2 = null;
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		imie = request.getParameter("mac");
		String phone = request.getParameter("phone");
		String yqm = request.getParameter("yqm");
		String initPoint = request.getParameter("point");
		System.out.println("point: " + initPoint);
		String xh = request.getParameter("xh");
		String sdk = request.getParameter("sdk");
		String ips = request.getParameter("ips");
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
				String string = null;
				do {
					string = StringUtils.getRandom(8);
					try {
						Thread.sleep(100);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
					flag++;
				} while (uDao.isExitJHM(string) && flag <= 500);
				user = new User();
				user.setPhone(phone);
				user.setTjm(string);
				user.setMac(imie);
				user.setTime(new Timestamp(System.currentTimeMillis()));
				user.setSdk(sdk);
				user.setIps(ips);
				user.setXinghao(xh);
				if (yqm != null && !"".equals(yqm)) {
					user.setYqh(yqm);
				}
				if (imie.length() >= 7) {
					user.setNicheng("蝌蚪" + imie.substring(2, 7));
				} else {
					user.setNicheng("蝌蚪" + imie);
				}
				user.setIsok(1);
				user.setTj(0l);
				user2 = uDao.addUser(user);
				usermoney.setAllmoney(0l);
				usermoney.setAlljifeng(point);
				addMoney(user2, point);
			}
			if (user2 == null) {
				json.put("isok", false);
			} else {
				if (!userMoneyDao.isExit(user2.getId())) {
					addMoney(user2, point);
				}
				usermoney = userMoneyDao.getUsermoney(user2.getId());
				json.put("isok", true);
				json.put("user", changeBean(user2));
			}
			write();
		}

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
		User user =uDao.getOneUser(uid);
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

	private UserBean changeBean(User user) {
		UserBean user2 = new UserBean();
		user2.setId(user.getId());
		user2.setIsok(user.getIsok());
		user2.setMac(user.getMac());
		user2.setName(user.getNicheng());
		user2.setJhm(user.getTjm());
		user2.setShangjia(user.getYqh());
		user2.setTg(user.getTj());
		user2.setXinshou(user.getXinshou());
		user2.setShareqq(user.getShareQQ());
		user2.setSharexinlang(user.getShareXinLang());
		user2.setYaoqingqq(user.getYaoqingQQ());
		user2.setQq(user.getQq());
		user2.setPhone(user.getPhone());
		user2.setZhifubao(user.getZhifubao());
		if (usermoney != null) {
			user2.setAllMoney(usermoney.getAllmoney());
			user2.setKedoubi(usermoney.getAlljifeng());
		}

		return user2;

	}

	public void updateUser() {
		init();
		String uid = request.getParameter("uid");
		String nicheng = request.getParameter("nicheng");
		String phone = request.getParameter("phone");
		String qqString = request.getParameter("qq");
		String zhifubao = request.getParameter("zhifubao");
		long id =Long.parseLong(uid);
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
		user=null;
	}
	public void updateUserShareQQ(){
		init();
		String uid = request.getParameter("uid");
		String jinbi =request.getParameter("jinbi");
		String typeString =request.getParameter("type");
		int type=Integer.parseInt(typeString);
		long id =Long.parseLong(uid);
		User user = uDao.getOneUser(id);
		
		if (type==SHARE_QQ) {
			user.setShareQQ(1);
			typeString="分享到qq空间";
		}
		else if (type ==SHARE_XIN_LANG) {
			user.setShareXinLang(1);
			typeString="分享到新浪微博";
		}
		else if (type==YAOQING_QQ) {
			user.setYaoqingQQ(1);
			typeString="邀请好友";
		}
		else {
			typeString="未知";
		}
		boolean b=uDao.updateUser(user);
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
		user=null;
	}
	private void addJilu(Long jifeng,String type){
		Jilu jilu = new Jilu();
		jilu.setJifeng(jifeng);
		jilu.setTime(new Timestamp(System.currentTimeMillis()));
		jilu.setType(type);
		jilu.setUid(uid);
		jilu.setKid(1000);
		jDao.addJL(jilu);
	}
	private void addMoney(long uid,long jinbi,String type){
		Usermoney usermoney =userMoneyDao.getUsermoney(uid);
		usermoney.setAlljifeng(usermoney.getAlljifeng()+jinbi);
		boolean b=userMoneyDao.updateMoney(usermoney);
		if (b) {
			addJilu(jinbi, type);
		}
	}

}
