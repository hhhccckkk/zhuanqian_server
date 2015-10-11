package com.hck.money.phone.action;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

import com.hck.money.bean.Apps;
import com.hck.money.bean.Userapp;
import com.hck.money.dao.AppDao;
import com.hck.money.dao.UserAppDao;
import com.hck.money.dao.UserDownAppDao;
import com.mysql.jdbc.log.Log;

public class UserAppAction extends BaseAction {
	private UserAppDao userAppDao;
	private UserDownAppDao dao;
	private List<Userapp> aList;
	private long id;
	private int page;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public List<Userapp> getaList() {
		return aList;
	}

	public void setaList(List<Userapp> aList) {
		this.aList = aList;
	}

	public UserDownAppDao getDao() {
		return dao;
	}

	public void setDao(UserDownAppDao dao) {
		this.dao = dao;
	}

	private AppDao aDao;

	public AppDao getaDao() {
		return aDao;
	}

	public void setaDao(AppDao aDao) {
		this.aDao = aDao;
	}

	
	public void qiandao() {
		init();
		try {
			long appId = Long.parseLong(request.getParameter("appId"));
			userAppDao.qiandao(appId);
			json.put("isok", true);
		} catch (Exception e) {
			json.put("isok", false);
		}
		write();

	}

	public void saveUserApp() {
		init();
		int id = Integer.parseInt(request.getParameter("id"));
		long uid = Long.parseLong(request.getParameter("uid"));
		if (aDao.isExit(uid, id)) {
			json.put("isok", false);
		} else {
			Apps apps = aDao.getOneApp(id);
			Userapp userapp = new Userapp();
			userapp.setImage1(apps.getImage1());
			userapp.setIscanqd(0);
			userapp.setIsok(1);
			userapp.setIsqd(0);
			userapp.setName(apps.getName());
			userapp.setPrice(apps.getPrice2());
			userapp.setTime(new Timestamp(System.currentTimeMillis()));
			userapp.setUid(uid);
			userapp.setBaoming(apps.getBaoming());
			userapp.setRk(apps.getRk());
			userapp.setAid(id);
			boolean b = userAppDao.addUserApp(userapp);
			if (b) {
				json.put("isok", true);
			} else {
				json.put("isok", false);
			}
		}

		write();
	}

	public void addUserApp() {
		init();
		int id = Integer.parseInt(request.getParameter("id"));
		int uid = Integer.parseInt(request.getParameter("uid"));
		boolean b = dao.addUserDownApp(id, uid);
		if (b) {
			json.put("isok", true);
		} else {
			json.put("isok", false);
		}
		write();

	}

	public UserAppDao getUserAppDao() {
		return userAppDao;
	}

	public void setUserAppDao(UserAppDao userAppDao) {
		this.userAppDao = userAppDao;
	}

	public void getUserAppsP() {
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		System.out.print("ҳ��: " + page);
		aList = userAppDao.getUserapps(id, page);
		changeBeans(aList);
		if (aList != null) {
			json.put("isok", true);
			json.put("apps", aList);
		} else {
			json.put("isok", false);
		}
		write();
	}

	/**
	 * 
	 //�˴�ת��Ϊ������
	 * 
	 * System.out.println("��������"+millionSeconds);
	 * 
	 * @param userapps
	 */
	private void changeBeans(List<Userapp> userapps) {
		List<Userapp> userapps2 = new ArrayList<Userapp>();
		long time = System.currentTimeMillis();
		System.out.println(time + "");
		Userapp userapp = null;
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddhhmmss");

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		for (int i = 0; i < userapps.size(); i++) {
			userapp = userapps.get(i);
			String str = dateFormat.format(userapp.getTime());
			long millionSeconds;
			try {
				millionSeconds = sdf.parse(str).getTime();
				System.out.println(millionSeconds + "");
				if (time - millionSeconds >= 24 * 60 * 60 * 1000) {
					userapp.setIscanqd(1);
				}
			} catch (ParseException e) {
				e.printStackTrace();
			}// ����
			userapps2.add(userapp);
		}
		userapps = userapps2;
	}

}
