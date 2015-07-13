package com.hck.money.daoserver;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.Userdownapp;
import com.hck.money.dao.UserDownAppDao;

public class UserDownAppServer extends HibernateDaoSupport implements
		UserDownAppDao {

	public boolean addUserDownApp(int appId, long uid) {
		if (isExit(appId,uid)) {
			return false;
		}
		else {
			try {
				Userdownapp userdownapp = new Userdownapp();
				userdownapp.setAppid(appId);
				userdownapp.setUid(uid);
				getHibernateTemplate().save(userdownapp);
				return true;
			} catch (Exception e) {
				return false;
			}
		}

	}
	private boolean isExit(int id,long uid) {
		String sqlString="from Userdownapp ud where ud.uid="+uid+" and ud.appid="+id;
		List<Object> objects=getHibernateTemplate().find(sqlString);
		if (objects==null || objects.isEmpty()) {
			return false;
		}
		else {
			return true;
		}
	}
	

	@SuppressWarnings("unchecked")
	public List<Userdownapp> getUserdownapps(long uid) {
		System.out.println("getUserdownapps " + uid);
		try {
			String sql = "from Userdownapp uapp where uapp.uid=" + uid;
			return getHibernateTemplate().find(sql);
		} catch (Exception e) {
			System.out.print(e.toString());
			return null;
		}

	}

}
