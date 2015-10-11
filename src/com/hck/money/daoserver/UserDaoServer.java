package com.hck.money.daoserver;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
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
import com.hck.money.dao.UserDao;
import com.hck.money.vo.Contans;
import com.opensymphony.xwork2.ActionContext;

public class UserDaoServer extends HibernateDaoSupport implements UserDao {
	private static final int TODY_SIZE = 1;
	private static final int ZUOTIAN_SIZE = 2;

	public User SearchUser(long id) {
		return (User) getHibernateTemplate().get(User.class, id);
	}

	public User addUser(User user) {
		try {
			getHibernateTemplate().save(user);
		} catch (Exception e) {
		}

		return getUser(user.getMac());
	}

	public void deleteUser(long id) {
		getHibernateTemplate().delete(
				getHibernateTemplate().get(User.class, id));
	}

	public User getOneUser(long id) {
		return (User) getHibernateTemplate().get(User.class, id);
	}

	public List<User> getUsers(int page) {
		String sql = "select new User(id,isok,nicheng) from User u order by u.id desc";
		ActionContext.getContext().getSession().put("userSize", getCount(sql));

		return getList(sql, page, 12);
	}

	public User login(String name, String password) {
		return null;
	}

	public void updateState(long id, int state) {
		User user = (User) getHibernateTemplate().get(User.class, id);
		user.setIsok(state);
		getHibernateTemplate().update(user);
	}

	@SuppressWarnings("unchecked")
	private List<User> getList(String sql, int page, int num) {
		List<User> pList = new ArrayList<User>();
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

	private int getCount(String sql) {

		return this.getHibernateTemplate().find(sql).size();
	}

	public boolean updateUser(User user) {

		try {
			getHibernateTemplate().update(user);
			return true;
		} catch (Exception e) {
			System.out.print("�޸��û�ʧ��: " + e.toString());
			return false;
		}

	}

	public List<User> getXiaJia(String jhm, int page) {
		String sqlString = "select new User(id,isok,nicheng,tjm) from User u where u.yqh='"
				+ jhm + "' order by u.id desc";
		ActionContext.getContext().getSession()
				.put("userSize", getCount(sqlString));
		return getList(sqlString, page, 12);
	}

	@SuppressWarnings("unused")
	public User isExit(String mac, String uid) {
		User userMAC = null;
		User qqUser = null;
		userMAC = getUser(mac);
		qqUser = getUserFromQQID(uid);
		if (userMAC == null && qqUser == null) {
			return null;
		} else if (userMAC == null && qqUser != null) {
			qqUser.setId(Contans.QQ_EXIT);
			return qqUser;
		} else if (userMAC != null && qqUser == null) {
			userMAC.setId(Contans.QQ_ERROR);
			return userMAC;
		}
		else if (userMAC!=null && qqUser!=null) {
			if(!userMAC.getUserID().equals(qqUser.getUserID())){
				userMAC.setId(Contans.QQ_ERROR);
				return userMAC;
			}
		}
		return userMAC;

	}

	@SuppressWarnings("unchecked")
	private User getUser(String mac) {
		String sqlString = "from User u where u.mac='" + mac + "'";
		List<User> users = new ArrayList<User>();
		users = getHibernateTemplate().find(sqlString);
		if (users.isEmpty()) {
			return null;
		} else {
			return users.get(0);
		}
	}

	@SuppressWarnings("unchecked")
	private User getUserFromQQID(String qqId) {
		String sqlString = "from User u where u.userID='" + qqId + "'";
		List<User> users = new ArrayList<User>();
		users = getHibernateTemplate().find(sqlString);
		if (users.isEmpty()) {
			return null;
		} else {
			return users.get(0);
		}
	}

	@SuppressWarnings("unchecked")
	public boolean isExitJHM(String jhm) {
		String sqlString = "select tjm from User u where u.tjm='" + jhm + "'";
		List<Object> objects = getHibernateTemplate().find(sqlString);
		if (objects != null && !objects.isEmpty()) {
			System.out.print(objects.get(0).toString());
			return true;
		}
		return false;
	}

	public User updateUser(String nc, long uid) {
		User user = (User) getHibernateTemplate().get(User.class, uid);
		if (user != null) {
			user.setNicheng(nc);
			getHibernateTemplate().update(user);
		}

		return user;
	}

	public boolean addYQM(User user, String qym, int jinbi) {
		try {
			boolean b = isExitJHM(qym);
			if (b) {
				addTJ(qym);
				updateUserYQM(user.getId(), qym);
				// addTJMoney(jinbi, qym,user);
				return true;
			}
		} catch (Exception e) {
			return false;
		}
		return false;
	}

	public boolean addTJMoney(long kedoubi, String yqm, User user1) {
		if (yqm != null && !"".equals(yqm)) {
			String sqlString = "from User u where u.tjm='" + yqm + "'";
			List<User> objects = getHibernateTemplate().find(sqlString);
			if (objects != null) {
				User user = objects.get(0);
				updateMoney(user.getId(), kedoubi, 1);

				Tg tg = new Tg();
				tg.setContent("�û�" + user1.getNicheng() + "���������뽱����� "
						+ kedoubi + "��");
				tg.setUserName(user.getNicheng());
				tg.setUid(user.getId());
				tg.setTime(new Timestamp(System.currentTimeMillis()));
				saveTg(tg);
				addJiLu(user.getId(), kedoubi);
				addMessage(user1.getNicheng(), kedoubi, user.getId());
			}
		}
		return false;
	}

	private void addJiLu(long uid, long jf) {
		Jilu jilu = new Jilu();
		jilu.setJifeng(jf);
		jilu.setTime(new Timestamp(System.currentTimeMillis()));
		jilu.setType("�ƹ�");
		jilu.setUid(uid);
		getHibernateTemplate().save(jilu);
	}

	private void saveTg(Tg tg) {
		getHibernateTemplate().save(tg);
	}

	public boolean updateMoney(long uid, long value, int type) {
		Usermoney usermoney = getUsermoney(uid);
		if (usermoney == null) {
			return false;
		} else {
			switch (type) {
			case 1: // ��������
				usermoney.setAlljifeng(usermoney.getAlljifeng() + value);

				break;
			case 2: // ��������
				usermoney.setAllmoney(usermoney.getAllmoney() + value / 1000);
				usermoney.setAlljifeng(usermoney.getAlljifeng() - value);
				break;
			default:
				break;
			}
			getHibernateTemplate().update(usermoney);
			return true;
		}
	}

	@SuppressWarnings("unchecked")
	public Usermoney getUsermoney(long uid) {
		List<Usermoney> usermoneys = new ArrayList<Usermoney>();
		String sqlString = "from Usermoney u where u.user.id=" + uid;
		usermoneys = getHibernateTemplate().find(sqlString);
		if (!usermoneys.isEmpty()) {
			return usermoneys.get(0);
		}
		return null;
	}

	private void updateUserYQM(long uid, String qym) {
		User user = (User) getHibernateTemplate().get(User.class, uid);
		if (user != null) {
			getHibernateTemplate().update(user);
		}
	}

	public void addTJ(String valu) {
		String sqlString = "from User u where u.tjm='" + valu + "'";
		List<Object> objects = getHibernateTemplate().find(sqlString);
		if (objects != null && !objects.isEmpty()) {
			User user = (User) objects.get(0);
			user.setTj(user.getTj() + 1);
			getHibernateTemplate().update(user);

		}
	}

	public void addMessage(String uName, Long kedoubi, long uid) {
		Message message = new Message();
		message.setContent("�û�" + uName + "���������룬���������" + kedoubi + "��");
		message.setState(0);
		message.setTime(new Timestamp(System.currentTimeMillis()));
		message.setUid(uid);
		getHibernateTemplate().save(message);
	}

	public long getUserSize(int type) {
		Date endDate = new Date();
		Calendar cl = Calendar.getInstance();
		cl.setTime(endDate);
		String sql = "from User u WHERE date(u.time) = curdate()";
		if (type == TODY_SIZE) {
			return getCount(sql);
		} else if (type == ZUOTIAN_SIZE) {
			cl.add(Calendar.DATE, -1);
			Date startDate = cl.getTime();
			SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
			// ��ʽ����ʼ���ںͽ�������
			String start = dd.format(startDate);
			String end = dd.format(endDate);

			sql = "from User u where u.time >= '" + start + "' and u.time <= '"
					+ end + "'";
			return getCount(sql);
		} else {
			return getCount("select id from User");
		}

	}

	public void updateUserTgSize(long uid) {
		try {
			User user = getOneUser(uid);
			long tgSize = user.getTj();
			user.setTj(tgSize + 1);
			updateUser(user);
		} catch (Exception e) {
		}

	}

	public boolean updateChouJiang(long uid, int size) {
		try {
			User user = getOneUser(uid);
			if (size > 0) {
				user.setChoujiang(user.getChoujiang() + size);
				user.setShareTime(new Timestamp(System.currentTimeMillis()));
			} else {
				int choujiangSize = user.getChoujiang() - 1 > 0 ? user
						.getChoujiang() - 1 : 0;
				user.setChoujiang(choujiangSize);
			}
			getHibernateTemplate().update(user);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	public User getUser(long uid) {
		return (User) getHibernateTemplate().get(User.class, uid);
	}

	public List<User> getTGAllUser(long uid) {
		String sqlString = "from User u where u.shangjia1=" + uid
				+ " or u.shangjia2=" + uid + " or u.shangjia3=" + uid
				+ " or u.shangjia4=" + uid + " or u.shangjia5=" + uid
				+ " or u.shangjia6=" + uid + " or u.shangjia7=" + uid
				+ " or u.shangjia8=" + uid +"order by u.id desc";
       
		return  getHibernateTemplate().find(sqlString);
	}
	public List<User> getTGUser(long uid, int page) {
		String sqlString = "from User u where u.shangjia1=" + uid
				+ " or u.shangjia2=" + uid + " or u.shangjia3=" + uid
				+ " or u.shangjia4=" + uid + " or u.shangjia5=" + uid
				+ " or u.shangjia6=" + uid + " or u.shangjia7=" + uid
				+ " or u.shangjia8=" + uid +"order by u.id desc";
       
		return  getList(sqlString, page, 20);
	}

	public List<User> getTGUserPC(long uid, int page) {
		String sqlString = "from User u where u.shangjia1=" + uid
				+ " or u.shangjia2=" + uid + " or u.shangjia3=" + uid
				+ " or u.shangjia4=" + uid + " or u.shangjia5=" + uid
				+ " or u.shangjia6=" + uid + " or u.shangjia7=" + uid
				+ " or u.shangjia8=" + uid +"order by u.id desc";
       
		ActionContext.getContext().getSession()
		.put("tgUser", getCount(sqlString));
		return getTGUser(uid, page);
	}

}
