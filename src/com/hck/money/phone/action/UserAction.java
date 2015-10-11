package com.hck.money.phone.action;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.hck.money.bean.Hongbao;
import com.hck.money.bean.TGUserSizeBean;
import com.hck.money.bean.Jilu;
import com.hck.money.bean.TGUserBean;
import com.hck.money.bean.User;
import com.hck.money.bean.Usermoney;
import com.hck.money.dao.JiLuDao;
import com.hck.money.dao.UserDao;
import com.hck.money.dao.UserMoneyDao;
import com.hck.money.daoserver.HongBaoServer;
import com.hck.money.daoserver.TGAppServer;
import com.hck.money.push.BaiduPushManger;
import com.hck.money.util.StringUtils;
import com.hck.money.vo.Contans;
import com.hck.money.vo.UserBean;

public class UserAction extends BaseAction {
	private static final String ERROR = "00000";
	private UserDao uDao;
	private UserMoneyDao userMoneyDao;
	private User user;
	private String imie;
	private Usermoney usermoney;
	private long uid;
	private JiLuDao jDao;
	private HongBaoServer hServer;
	private TGAppServer tServer;
    private int hongBao;
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

	// type 1,登陆成功,0,失败. 2: 帮定当前手机的qq号码不对.3:该qq号码在其他手机已经帮定
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
		long shangjia6 = getLongData("shangjia6");
		long shangjia7 = getLongData("shangjia7");
		long shangjia8 = getLongData("shangjia8");
		String sdk = getStringData("sdk");
		String userId = getStringData("userId");
		String userName = getStringData("userName");
		String userTX = getStringData("userTX");
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
			user2 = uDao.isExit(imie, userId);
			if (user2 == null) {
				User user = new User();
				user.setPhone(phone);
				user.setMac(imie);
				user.setSdk(sdk);
				user.setNicheng(userName);
				user.setTouxiang(userTX);
				user.setUserID(userId);
				user.setTime(new Timestamp(System.currentTimeMillis()));
				user.setXinghao(xh);
				if (shangjia1 > 0) {
					tServer.updateTGUrlSize(shangjia1);
					user.setShangjia1(shangjia1);
					addHongBao(user.getShangjia1(), user.getNicheng());
					uDao.updateUserTgSize(shangjia1);
					User user3 = uDao.getUser(shangjia1);
					if (user3 != null && user.getPushid() != null) {
						BaiduPushManger.sendMsgToOneUser(user.getPushid(),
								Contans.PUSH_TYPE_MSG, "恭喜您:获取新的推广用户",
								"您获得相应推广奖励,拆开红包可以获取奖励");
					}
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
				if (shangjia6 > 0) {
					user.setShangjia6(shangjia6);
					uDao.updateUserTgSize(shangjia6);
				}
				if (shangjia7 > 0) {
					user.setShangjia7(shangjia7);
					uDao.updateUserTgSize(shangjia7);
				}
				if (shangjia8 > 0) {
					user.setShangjia8(shangjia8);
					uDao.updateUserTgSize(shangjia8);
				}
				user.setIsok(1);
				user.setTj(0l);
				user2 = uDao.addUser(user);
				if (user2 == null) {
					json.put("type", 0);
				} else {
					if (!userMoneyDao.isExit(user2.getId())) {
						addMoney(user2, point);
					}
					Usermoney	usermoney1 = userMoneyDao.getUsermoney(user2.getId());
					addHongBaoXIT(user2.getId(), "蝌蚪手机赚钱官方");
					json.put("type", 1);
					json.put("user", changeBean(user2, usermoney1));
				}
			} else {
				if (user2.getId() == Contans.QQ_ERROR) {
					json.put("type", 3);
					json.put("msg", "当前手机已经帮定qq帐号: " + user2.getNicheng()
							+ "请切换帐号重新登陆");
				} else if (user2.getId() == Contans.QQ_EXIT) {
					json.put("type", 2);
					json.put("msg", "当前qq号码已经帮定其他手机,不能再次帮定该手机");
				} else {
					try {
						if (!userMoneyDao.isExit(user2.getId())) {
							addMoney(user2, point);
						}
					} catch (Exception e) {
					}
					
					Usermoney	usermoney2 = userMoneyDao.getUsermoney(user2.getId());
					json.put("type", 1);
					json.put("user", changeBean(user2, usermoney2));
				}
				usermoney = null;
			}
			write();
		}

	}

	public void getUser() {
		init();
		long uid = getLongData("uid");
		User user = uDao.getUser(uid);
		if (user == null) {
			json.put("isok", false);
		} else {
			usermoney = null;
			usermoney = userMoneyDao.getUsermoney(user.getId());
			json.put("isok", true);
			json.put("user", changeBean(user, usermoney));
		}
		write();

	}

	/**
	 * 分享获取抽奖.
	 */
	public void shareGetCj() {
		init();
		User user = uDao.getOneUser(uid);
		if (user.getShareTime() == null) {
			addChouJiang();
			return;
		}
		int tag = compare_date(user.getShareTime().toString(), new Timestamp(
				System.currentTimeMillis()).toString());

		if (tag == -1) {
			addChouJiang();
		} else {
			json.put("isok", false);
			write();

		}

	}

	private void addChouJiang() {
		boolean isok = uDao.updateChouJiang(uid, 1);
		if (isok) {
			if (isok) {
				json.put("isok", true);
			} else {
				json.put("isok", false);
			}
		}
		write();
	}

	public int compare_date(String DATE1, String DATE2) {

		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date dt1 = df.parse(DATE1);
			Date dt2 = df.parse(DATE2);
			if (dt1.getTime() > dt2.getTime()) {
				return 1;
			} else if (dt1.getTime() < dt2.getTime()) {
				return -1;
			} else {
				return 0;
			}
		} catch (Exception exception) {
			exception.printStackTrace();
		}
		return 0;
	}

	

	private void addHongBao(long uid, String uname) {
		hongBao=0;
		hongBao=getTgJinBi();
		Hongbao hongbao = new Hongbao();
		hongbao.setContent("用户:" + uname
				+ "安装您的推广包，您获得一个0.3-0.8元随即红包,拆开可以获取对应奖励的金币");
		hongbao.setIsOpen(0);
		hongbao.setPoint(hongBao);
		hongbao.setIsXiTong(0);
		hongbao.setTime(new Timestamp(System.currentTimeMillis()).toString());
		hongbao.setUid(uid);
		hongbao.setuName(uname);
		hServer.addHongBao(hongbao);
	}
	private void addHongBaoXIT(long uid, String uname) {
		Hongbao hongbao = new Hongbao();
		hongbao.setContent("欢迎新用户,系统奖励您一个0.3-0.8元的红包,在赚钱区随便做几个任务,就可以提现了,推广用户可以无限获取红包");
		hongbao.setIsOpen(0);
		if(hongBao<=0){
			hongBao=getTgJinBi();;
		}
		hongbao.setPoint(hongBao);
		hongbao.setIsXiTong(1);
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

	private UserBean changeBean(User user, Usermoney usermoney) {
		UserBean user2 = new UserBean();
		user2.setId(user.getId());
		user2.setIsok(user.getIsok());
		user2.setMac(user.getMac());
		user2.setName(user.getNicheng());
		user2.setTg(user.getTj());
		user2.setQq(user.getQq());
		user2.setPhone(user.getPhone());
		user2.setZhifubao(user.getZhifubao());
		user2.setTGMoney(usermoney.getTjmoney());
		user2.setUserID(user.getUserID());
		user2.setTouxiang(user.getTouxiang());
		user2.setPushId(user.getPushid());
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
		if (user.getShangjia6() != null) {
			user2.setShangjia6(user.getShangjia6());
		}
		if (user.getShangjia7() != null) {
			user2.setShangjia7(user.getShangjia7());
		}
		if (user.getShangjia8() != null) {
			user2.setShangjia8(user.getShangjia8());
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

	private int getTgJinBi() {
		int postion = (int) (Math.random() * 100);
		return getJiangPingSizeByciShu(postion);

	}

	private int getJiangPingSizeByciShu(int postion) {
		if (1 < postion && postion < 4) {
			return 700;
		} else if (4 < postion && postion < 9) {
			return 600;
		} else if (9 < postion && postion <25) {
			return 400;
		} else if (25 < postion && postion <90) {
			return 300;
		} else if (90 < postion && postion < 100) {
			return 500;
		} else if(postion==5){
			return 800;
		}
		else {
			return 300;
		}
	}

	public void updateUserPushId() {
		init();
		String uid = request.getParameter("uid");
		String pushId = request.getParameter("pushId");
		long id = Long.parseLong(uid);
		User user = uDao.getOneUser(id);
		user.setPushid(pushId);
		boolean b = uDao.updateUser(user);
		if (b) {
			json.put("isok", true);
		} else {
			json.put("isok", false);
		}
		write();
		user = null;
	}

	public void getTGUserSize() {
		init();
		long uid = getLongData("uid");
		List<User> users = uDao.getTGAllUser(uid);
		if (users != null && !users.isEmpty()) {
			json.put("isok", true);
			json.put("size", getTgAllUserSize(users, uid));
		} else {
			json.put("isok", false);
		}
		write();
		users = null;
	}
	
	public void getTGUsers() {
		init();
		long uid = getLongData("uid");
		int page = getIntData("page");
        System.err.println("id: "+uid+"page: "+page);
		List<User> users = uDao.getTGUser(uid, page);
		if (users != null && !users.isEmpty()) {
			json.put("isok", true);
			json.put("users", getTgUserBean(users, uid));
		} else {
			json.put("isok", false);
		}
		write();
		users = null;
	}

	private TGUserSizeBean getTgAllUserSize(List<User> users, long uid) {
		int size1 = 0;
		for (int i = 0; i < users.size(); i++) {
			User user = users.get(i);
			if (user.getShangjia1() == uid) {
				size1++;
			}
		}
		TGUserSizeBean bean = new TGUserSizeBean();
		bean.setSize1(size1);
		bean.setTotalSize(users.size());
		return bean;

	}

	private List<TGUserBean> getTgUserBean(List<User> users, long uid) {
		TGUserBean tgUserBean = null;
		List<TGUserBean> tgBeans = new ArrayList<TGUserBean>();

		for (int i = 0; i < users.size(); i++) {
			tgUserBean = new TGUserBean();
			User user = users.get(i);
			tgUserBean.setQq(user.getQq());
			tgUserBean.setTg(user.getTj());
			tgUserBean.setTouxiang(user.getTouxiang());
			tgUserBean.setUserId(user.getId());
			tgUserBean.setUserName(user.getNicheng());
			if (user.getShangjia1() == uid) {
				tgUserBean.setJishu(1);
			}
			else if (user.getShangjia2() == uid) {
				tgUserBean.setJishu(2);
			}
			else if (user.getShangjia3() == uid) {
				tgUserBean.setJishu(3);
			}

			else if (user.getShangjia4() == uid) {
				tgUserBean.setJishu(4);
			}

			else if (user.getShangjia5() == uid) {
				tgUserBean.setJishu(5);
			}

			else if (user.getShangjia6() == uid) {
				tgUserBean.setJishu(6);
			}

			else if (user.getShangjia7() == uid) {
				tgUserBean.setJishu(7);
			}

			else if (user.getShangjia8() == uid) {
				tgUserBean.setJishu(8);
			}


			tgBeans.add(tgUserBean);
		}

		return tgBeans;

	}

}
