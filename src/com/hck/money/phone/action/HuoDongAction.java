package com.hck.money.phone.action;

import java.net.URLEncoder;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.lf5.util.DateFormatManager;

import com.hck.money.bean.HuoDongBean;
import com.hck.money.bean.Usermoney;
import com.hck.money.daoserver.HuoDongServer;
import com.hck.money.daoserver.UserMoneyServer;
import com.hck.money.duihuanba.CreditTool;
import com.hck.money.duihuanba.SignTool;
import com.hck.money.vo.Contans;

public class HuoDongAction extends BaseAction {
	private HuoDongServer huoDongServer;
	private UserMoneyServer userDao;

	public UserMoneyServer getUserDao() {
		return userDao;
	}

	public void setUserDao(UserMoneyServer userDao) {
		this.userDao = userDao;
	}

	public HuoDongServer getHuoDongServer() {
		return huoDongServer;
	}

	public void setHuoDongServer(HuoDongServer huoDongServer) {
		this.huoDongServer = huoDongServer;
	}

	public void getHuoDong() {
		init();
		List<HuoDongBean> huoDongBeans = huoDongServer.getHuoDong();
		if (huoDongBeans != null && !huoDongBeans.isEmpty()) {
			json.put("isok", true);
			json.put("data", huoDongBeans);
		} else {
			json.put("isok", false);

		}
		write();
	}

	public void getHuoDongUrl() {
		init();
		
		long time =new Date().getTime();
		String url = getStringData("url");
		System.out.print("url: "+url);
		long uid = getLongData("uid");
		Usermoney user = userDao.getUsermoney(uid);
		if (user == null) {
			json.put("isok", false);
		}
		long ponit = user.getAlljifeng();
		Map<String, String> data = new HashMap<String, String>();
		data.put("appKey", Contans.DUIHUANG_BA_KEY);
		data.put("appSecret", Contans.DUIHUANG_BA_Secret);
		data.put("uid", uid + "");
		data.put("credits", ponit + "");
		data.put("timestamp", time+"");
		data.put("redirect", url);
		String duihuanUrl = null;
		CreditTool tool = new CreditTool(Contans.DUIHUANG_BA_KEY,
				Contans.DUIHUANG_BA_Secret);
		duihuanUrl=tool.buildUrlWithSign("http://www.duiba.com.cn/autoLogin/autologin?", data);
		json.put("isok", true);
		json.put("url", duihuanUrl);
		write();

	}
}
