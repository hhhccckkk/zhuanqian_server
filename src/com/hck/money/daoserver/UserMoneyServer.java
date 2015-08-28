package com.hck.money.daoserver;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.Jilu;
import com.hck.money.bean.Message;
import com.hck.money.bean.Tg;
import com.hck.money.bean.User;
import com.hck.money.bean.Usermoney;
import com.hck.money.dao.UserMoneyDao;
import com.opensymphony.xwork2.ActionContext;

public class UserMoneyServer extends HibernateDaoSupport implements UserMoneyDao{
	private static UserMoneyServer moneyServer;
   public static UserMoneyServer getMoneyDaoServer()
   {
	   if (moneyServer==null) {
		   moneyServer=new UserMoneyServer();
	}
	  
	   return moneyServer;
   }
	public boolean addUserMoney(Usermoney mUsermoney) {
		getHibernateTemplate().save(mUsermoney);
		return false;
	}

	public List<Usermoney> getPH() {
		String sql="from Usermoney u order by u.allmoney desc";
		return getList(sql, 1, 48);
	}
	public List<Usermoney> getTG() {
		String sql="from Usermoney u order by u.tjmoney desc";
		return getList(sql, 1, 48);
	}
	public List<Usermoney> getPH2(int page) {
		String sql="from Usermoney u order by u.allmoney desc";
		ActionContext.getContext().getSession().put("phSize", getCount(sql));
		return getList(sql, page, 12);
	}
	public List<Usermoney> getTG2(int page) {
		String sql="from Usermoney u order by u.tjmoney desc";
		ActionContext.getContext().getSession().put("tgSize", getCount(sql));
		return getList(sql, page, 12);
	}
	private int getCount(String sql) {

		return this.getHibernateTemplate().find(sql).size();
	}
	@SuppressWarnings("unchecked")
	public Usermoney getUsermoney(long uid) {
		List<Usermoney> usermoneys=new ArrayList<Usermoney>();
		String sqlString="from Usermoney u where u.user.id="+uid;
		usermoneys=getHibernateTemplate().find(sqlString);
		if (!usermoneys.isEmpty()) {
			return usermoneys.get(0);
		}
		return null;
	}

	public boolean updateMoney(Usermoney usermoney) {
		try {
			getHibernateTemplate().update(usermoney);
			return true;
		} catch (Exception e) {
			return false;
		}
		
	}
	
	@SuppressWarnings("unchecked")
	private List<Usermoney> getList(String sql, int page, int num) {
		List<Usermoney> pList = new ArrayList<Usermoney>();
		Query query = null;
		Session session = this.getHibernateTemplate().getSessionFactory()
				.openSession();
		query = session.createQuery(sql);
		query.setFirstResult((page - 1) * num);
		query.setMaxResults(num);
		pList = query.list();
		super.releaseSession(session);
		return pList;
	}

	public boolean isExit(long uid) {
		String sql="from Usermoney u where u.user.id="+uid;
		if (getHibernateTemplate().find(sql)==null) {
			return false;
		}
		return true;
	}

	public boolean updateMoney(long uid, long value,int type,boolean isTG) {
		Usermoney usermoney=getUsermoney(uid);
		if (usermoney==null) {
			return false;
		}
		else {
			switch (type) {
			case 1: //增加蝌蚪币
				usermoney.setAlljifeng(usermoney.getAlljifeng()+value);
				if (isTG) {
					usermoney.setTjmoney(usermoney.getAllmoney()+value);
				}
				break;
			case 2: //减少蝌蚪币
				usermoney.setAllmoney(usermoney.getAllmoney()+value/1000);
				usermoney.setAlljifeng(usermoney.getAlljifeng()-value);
				break;
			default:
				break;
			}
			getHibernateTemplate().update(usermoney);
			return true;
		}
	}
	
	private void saveTg(Tg tg)
	{
		getHibernateTemplate().save(tg);
	}
	public void addMessage(Message message) {
        getHibernateTemplate().save(message);		
	}
	private void addJiLu(long uid,long jf)
	{
		Jilu jilu = new Jilu();
		jilu.setJifeng(jf);
		jilu.setTime(new Timestamp(System.currentTimeMillis()));
		jilu.setType("推广");
		jilu.setUid(uid);
		getHibernateTemplate().save(jilu);
	}
	public boolean addTJMoney(String uName, long size, String yqm) {
		// TODO Auto-generated method stub
		return false;
	}
	

}
