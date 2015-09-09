package com.hck.money.pc.action;

import java.util.List;

import com.hck.money.bean.User;
import com.hck.money.bean.Usermoney;
import com.hck.money.dao.UserDao;
import com.hck.money.dao.UserMoneyDao;
import com.hck.money.daoserver.UserDaoServer;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private UserDao uDao;
	private UserMoneyDao userMoneyDao;
	private long id;
	private User user;
	private int page;
	private int isok;
	private long size;
	private long jintian;
	private long zuotian;

	public long getJintian() {
		return jintian;
	}

	public void setJintian(long jintian) {
		this.jintian = jintian;
	}

	public long getZuotian() {
		return zuotian;
	}

	public void setZuotian(long zuotian) {
		this.zuotian = zuotian;
	}

	private int type;

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	private String jhm;
	private Usermoney usermoney;
	private String key;

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public UserMoneyDao getUserMoneyDao() {
		return userMoneyDao;
	}

	public void setUserMoneyDao(UserMoneyDao userMoneyDao) {
		this.userMoneyDao = userMoneyDao;
	}

	public Usermoney getUsermoney() {
		return usermoney;
	}

	public void setUsermoney(Usermoney usermoney) {
		this.usermoney = usermoney;
	}

	public String getJhm() {
		return jhm;
	}

	public void setJhm(String jhm) {
		this.jhm = jhm;
	}

	public int getIsok() {
		return isok;
	}

	public void setIsok(int isok) {
		this.isok = isok;
	}

	public UserDao getuDao() {
		return uDao;
	}

	public void setuDao(UserDao uDao) {
		this.uDao = uDao;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public String getIdString() {
		return idString;
	}

	public void setIdString(String idString) {
		this.idString = idString;
	}

	private List<User> users;
	private String idString;

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String getAllUsers() {
		if (ActionContext.getContext().getSession().get("admin") == null) {
			return null;
		}
		users = uDao.getUsers(page);
		if (users == null) {
			addActionError("没有数据");
		}
		ActionContext.getContext().getSession().put("userPage", page);
		return SUCCESS;
	}

	public String deleteUser() {
		if (null != idString) {
			String[] id = idString.split(",");
			for (int j = 0; j < id.length; j++) {
				uDao.deleteUser(Integer.parseInt(id[j]));
			}
			return SUCCESS;
		} else if (id != 0) {
			uDao.deleteUser(id);
			return SUCCESS;
		}
		addActionError("未知错误");
		return ERROR;
	}

	public String getOneUser() {
		user = null;
		user = uDao.getOneUser(id);
		usermoney = userMoneyDao.getUsermoney(id);

		return SUCCESS;
	}

	public String updateState() {
		uDao.updateState(id, isok);
		return SUCCESS;
	}

	public String searchUser() {
	System.out.print("uid: "+id);
		user = uDao.SearchUser(id);
		if (user != null) {
			usermoney = userMoneyDao.getUsermoney(user.getId());
		}
		return SUCCESS;
	}

	public String getUserSize() {
		if (type == 1) {
			jintian = uDao.getUserSize(type);
		} else if (type == 2) {
			zuotian = uDao.getUserSize(type);
		} else {
			size = uDao.getUserSize(type);
		}
		return SUCCESS;
	}

	public long getSize() {
		return size;
	}

	public void setSize(long size) {
		this.size = size;
	}

	public String getXiaJia() {
		users = uDao.getXiaJia(jhm, page);
		if (users != null && !users.isEmpty()) {
			ActionContext.getContext().getSession().put("userPage", page);
		}
		return SUCCESS;
	}

	public String addUserPC() {
		user.setIsok(1);
		user.setPhone("12345678");
		uDao.addUser(user);

		addActionError("增加成功");
		return SUCCESS;

	}

}
