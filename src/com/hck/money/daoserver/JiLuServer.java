package com.hck.money.daoserver;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javassist.bytecode.Mnemonic;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.dialect.MySQL5Dialect;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.JiLuTongjiBean;
import com.hck.money.bean.Jilu;
import com.hck.money.bean.Kind;
import com.hck.money.bean.MoneyBean;
import com.hck.money.bean.TypeMoney;
import com.hck.money.dao.JiLuDao;
import com.opensymphony.xwork2.ActionContext;

public class JiLuServer extends HibernateDaoSupport implements JiLuDao {
	private static JiLuServer oServer;
	List<Long> sizes = new ArrayList<Long>();

	public static JiLuServer getMoneyDaoServer() {
		if (oServer == null) {
			oServer = new JiLuServer();
		}

		return oServer;
	}

	public void deleteJU(long uid) {
		getHibernateTemplate().delete(
				getHibernateTemplate().get(Jilu.class, uid));
	}

	public List<Jilu> getJilus(int page, long uid) {

		String sqlString = "from Jilu j where j.uid=" + uid
				+ "order by j.id desc";

		ActionContext.getContext().getSession()
				.put("jilu", getCount(sqlString));

		return getList(sqlString, page, 12);
	}

	@SuppressWarnings("unchecked")
	private List<Jilu> getList(String sql, int page, int num) {
		List<Jilu> pList = new ArrayList<Jilu>();
		Query query = null;
		Session session = this.getHibernateTemplate().getSessionFactory()
				.openSession();
		query = session.createQuery(sql);
		query.setFirstResult((page - 1) * num);
		query.setMaxResults(num);
		pList = query.list();
		super.releaseSession(session);
		session = null;
		return pList;
	}

	private int getCount(String sql) {

		return this.getHibernateTemplate().find(sql).size();
	}

	public void addJL(Jilu jilu) {
		getHibernateTemplate().save(jilu);
	}

	public List<Jilu> getJilus(int page, int type) {
		String sqlString = null;
		Date endDate = new Date();
		Calendar cl = Calendar.getInstance();
		cl.setTime(endDate);
		if (type == 1) {
			sqlString = "from Jilu j WHERE date(j.time) = curdate() order by j.id desc";
		} else if (type == 2) {
			cl.add(Calendar.DATE, -1);
			Date startDate = cl.getTime();
			SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
			// 格式化开始日期和结束日期
			String start = dd.format(startDate);
			String end = dd.format(endDate);

			sqlString = "from Jilu j where j.time >= '" + start
					+ "' and j.time <= '" + end + "'";
		} else {
			cl.add(Calendar.DATE, -7);
			Date startDate = cl.getTime();
			SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
			// 格式化开始日期和结束日期
			String start = dd.format(startDate);
			String end = dd.format(endDate);

			sqlString = "from Jilu j where j.time >= '" + start
					+ "' and j.time <= '" + end + "' order by j.id desc";
		}
		ActionContext.getContext().getSession()
				.put("jilu2", getCount(sqlString));
		return getList(sqlString, page, 12);
	}

	@SuppressWarnings("unchecked")
	public long getAllMoneyJL(int type) {
		String sqlString = null;
		Date endDate = new Date();
		Calendar cl = Calendar.getInstance();
		cl.setTime(endDate);
		if (type == 1) {
			sqlString = "select sum(jifeng) from Jilu j WHERE date(j.time) = curdate()";
		} else if (type == 2) {
			cl.add(Calendar.DATE, -1);
			Date startDate = cl.getTime();
			SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
			// 格式化开始日期和结束日期
			String start = dd.format(startDate);
			String end = dd.format(endDate);

			sqlString = "select sum(jifeng) from Jilu j where j.time >= '"
					+ start + "' and j.time <= '" + end
					+ "' order by j.id desc";
		} else {
			cl.add(Calendar.DATE, -7);
			Date startDate = cl.getTime();
			SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
			// 格式化开始日期和结束日期
			String start = dd.format(startDate);
			String end = dd.format(endDate);

			sqlString = "select sum(jifeng) from Jilu j where j.time >= '"
					+ start + "' and j.time <= '" + end
					+ "' order by j.id desc";
		}
		List<Long> sizes = getHibernateTemplate().find(sqlString);
		if (sizes != null) {
			return sizes.get(0);
		}
		return 0;
	}

	public long getCount(Long id, int kindid) {
		Date endDate = new Date();
		Calendar cl = Calendar.getInstance();
		cl.setTime(endDate);
		String hql = "select count(*) from Jilu j where j.uid=" + id
				+ " and j.kid=" + kindid + " and date(j.time) = curdate()";
		@SuppressWarnings("unchecked")
		List<Long> sizeList = getHibernateTemplate().find(hql);
		if (sizeList != null) {
			return sizeList.get(0);
		}
		return 0;
	}

	public TypeMoney getAllMoneyType(int type) {
		TypeMoney money = null;
		long dl = 0l;
		long jiujiu = 0l;
		long yg = 0l;
		long kg = 0l;
		long xiaomai = 0l;
		long zm = 0l;
		long baidu = 0l;
		long tm = 0l;
		long mjf = 0l;
		long shouxin = 0l;
		long wp = 0l;
		String sqlString2 = null;
		String sqlString = null;
		Date endDate = new Date();
		Calendar cl = Calendar.getInstance();
		cl.setTime(endDate);
		if (type == 1) {
			sqlString = "select sum(jifeng) from Jilu j WHERE date(j.time) = curdate()";
			sqlString2 = sqlString + " and j.type='点乐'";
			dl = getSize(sqlString2);
			sqlString2 = sqlString + " and j.type='久久'";
			jiujiu = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='赢告'";
			yg = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='科哥'";
			kg = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='小麦'";
			xiaomai = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='指盟'";
			zm = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='手心'";
			shouxin = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='百度'";
			baidu = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='天马'";
			tm = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='万普'";
			wp = getSize(sqlString2);

			money = new TypeMoney();
			money.setDl(dl);
			money.setKg(kg);
			money.setXiaomai(xiaomai);
			money.setYg(yg);
			money.setZm(zm);
			money.setBaidu(baidu);
			money.setMjf(mjf);
			money.setBaidu(baidu);
			money.setTm(tm);
			money.setShouxin(shouxin);
			money.setJiujiu(jiujiu);
			money.setWp(wp);
			money.setTm(tm);

			long allMoney = dl + jiujiu + kg + xiaomai + yg + zm + baidu + tm
					+ mjf + shouxin + wp;
			money.setAllMoney(allMoney);

		} else if (type == 2) {
			cl.add(Calendar.DATE, -1);
			Date startDate = cl.getTime();
			SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
			// 格式化开始日期和结束日期
			String start = dd.format(startDate);
			String end = dd.format(endDate);

			sqlString = "select sum(jifeng) from Jilu j where j.time >= '"
					+ start + "' and j.time <= '" + end + "'";

			sqlString2 = sqlString + " and j.type='点乐'";
			dl = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='手心'";
			shouxin = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='久久'";
			jiujiu = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='赢告'";
			yg = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='酷果'";
			kg = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='小麦'";
			xiaomai = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='指盟'";
			zm = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='百度'";
			baidu = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='米积分'";
			mjf = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='天马'";
			tm = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='万普'";
			wp = getSize(sqlString2);

			money = new TypeMoney();
			money.setDl(dl);
			money.setKg(kg);
			money.setXiaomai(xiaomai);
			money.setYg(yg);
			money.setZm(zm);
			money.setBaidu(baidu);
			money.setMjf(mjf);
			money.setBaidu(baidu);
			money.setTm(tm);
			money.setShouxin(shouxin);
			money.setJiujiu(jiujiu);
			money.setWp(wp);
			money.setTm(tm);

			long allMoney = dl + jiujiu + kg + xiaomai + yg + zm + baidu + tm
					+ mjf + shouxin + wp;
			money.setAllMoney(allMoney);
		} else {
			cl.add(Calendar.DATE, -7);
			Date startDate = cl.getTime();
			SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
			// 格式化开始日期和结束日期
			String start = dd.format(startDate);
			String end = dd.format(endDate);

			sqlString = "select sum(jifeng) from Jilu j where j.time >= '"
					+ start + "' and j.time <= '" + end + "' ";

			sqlString2 = sqlString + " and j.type='点乐'";
			dl = getSize(sqlString2);
			sqlString2 = sqlString + " and j.type='久久'";
			jiujiu = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='赢告'";
			yg = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='手心'";
			shouxin = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='酷果'";
			kg = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='小麦'";
			xiaomai = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='指盟'";
			zm = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='百度'";
			baidu = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='米积分'";
			mjf = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='天马'";
			tm = getSize(sqlString2);

			sqlString2 = sqlString + " and j.type='万普'";
			wp = getSize(sqlString2);
			money = new TypeMoney();
			money.setDl(dl);
			money.setKg(kg);
			money.setXiaomai(xiaomai);
			money.setYg(yg);
			money.setZm(zm);
			money.setBaidu(baidu);
			money.setMjf(mjf);
			money.setBaidu(baidu);
			money.setTm(tm);
			money.setShouxin(shouxin);
			money.setJiujiu(jiujiu);
			money.setWp(wp);
			money.setTm(tm);

			long allMoney = dl + jiujiu + kg + xiaomai + yg + zm + baidu + tm
					+ mjf + shouxin + wp;
			money.setAllMoney(allMoney);
		}

		return money;
	}

	private long getSize(String sql) {
		List<Long> sizes = getHibernateTemplate().find(sql);
		if (sizes != null && sizes.get(0) != null) {
			return sizes.get(0);
		}
		return 0;
	}

	public JiLuTongjiBean getJiLuTongjiBean(long uid) {
		long size1 = 0;
		long size2 = 0;
		long size3 = 0;
		JiLuTongjiBean bean = null;
		Date endDate = new Date();
		Calendar cl = Calendar.getInstance();
		cl.setTime(endDate);

		String sqlString1 = "select sum(jifeng) from Jilu j WHERE date(j.time) = curdate() and j.uid="
				+ uid;

		cl.add(Calendar.DATE, -1);
		Date startDate = cl.getTime();
		SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
		// 格式化开始日期和结束日期
		String start = dd.format(startDate);
		String end = dd.format(endDate);

		String sqlString2 = "select sum(jifeng) from Jilu j where j.time >= '"
				+ start + "' and j.time <= '" + end + "' and j.uid=" + uid;
		try {

			String sqlString3 = "select sum(jifeng) from Jilu j where j.uid="
					+ uid;
			sizes = getHibernateTemplate().find(sqlString3);
			if (sizes != null && !sizes.isEmpty()) {
				size3 = sizes.get(0);
			}

			sizes = getHibernateTemplate().find(sqlString1);
			if (sizes != null && !sizes.isEmpty()) {
				size1 = sizes.get(0);
			}
			sizes = getHibernateTemplate().find(sqlString2);

			if (sizes != null && !sizes.isEmpty()) {
				size2 = sizes.get(0);
			}

		} catch (Exception e) {
		}
		bean = new JiLuTongjiBean();
		bean.setQianTian(size3);
		bean.setToday(size1);
		bean.setZuoTian(size2);
		return bean;
	}

	private long getHongBaoMoney() {
		String sqlString = "select sum(jifeng) from Jilu j WHERE date(j.time) = curdate() and j.kid="+100;
		long money=getSize(sqlString);
		return money;

	}
	
	private long getCJ() {
		String sqlString = "select sum(jifeng) from Jilu j WHERE date(j.time) = curdate() and j.kid="+101;
		long money=getSize(sqlString);
		return money;

	}

	public MoneyBean getAllMoneyType(int type, List<Kind> kinds) {

		String sqlString2 = null;
		String sqlString = null;
		MoneyBean bean = new MoneyBean();
		Date endDate = new Date();
		Calendar cl = Calendar.getInstance();
		cl.setTime(endDate);
		long money = 0;
		long allMoney = 0;
		String zhuanqianString = "";
		if (type == 1) {
			sqlString = "select sum(jifeng) from Jilu j WHERE date(j.time) = curdate()";
			for (int i = 0; i < kinds.size(); i++) {
				String typeString = kinds.get(i).getName();
				int kid=kinds.get(i).getAid();
				sqlString2 = sqlString + " and j.kid="+kid;
				money = getSize(sqlString2);
				allMoney = allMoney + money;
				zhuanqianString = zhuanqianString + typeString + ":" + money
						+ "   ";
			}

		} else if (type == 2) {
			cl.add(Calendar.DATE, -1);
			Date startDate = cl.getTime();
			SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
			// 格式化开始日期和结束日期
			String start = dd.format(startDate);
			String end = dd.format(endDate);

			sqlString = "select sum(jifeng) from Jilu j where j.time >= '"
					+ start + "' and j.time <= '" + end + "'";

			for (int i = 0; i < kinds.size(); i++) {
				String typeString = kinds.get(i).getName();
				int kid=kinds.get(i).getAid();
				sqlString2 = sqlString + " and j.kid="+kid;
				money = getSize(sqlString2);
				allMoney = allMoney + money;
				zhuanqianString = zhuanqianString + typeString + ":" + money
						+ "   ";
			}

		} else {
			cl.add(Calendar.DATE, -7);
			Date startDate = cl.getTime();
			SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
			String start = dd.format(startDate);
			String end = dd.format(endDate);

			sqlString = "select sum(jifeng) from Jilu j where j.time >= '"
					+ start + "' and j.time <= '" + end + "' ";

			for (int i = 0; i < kinds.size(); i++) {
				String typeString = kinds.get(i).getName();
				int kid=kinds.get(i).getAid();
				sqlString2 = sqlString + " and j.kid="+kid;
				money = getSize(sqlString2);
				allMoney = allMoney + money;
				zhuanqianString = zhuanqianString + typeString + ":" + money
						+ "   ";
			}

		}
		zhuanqianString =zhuanqianString+"红包: "+getHongBaoMoney()+"  抽奖: "+getCJ();
		bean.setAllMoney(allMoney);
		bean.setContent(zhuanqianString);

		return bean;
	}

}
