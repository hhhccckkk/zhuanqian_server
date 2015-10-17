package com.hck.money.dao;

import java.util.List;

import com.hck.money.bean.User;

public interface UserDao {
public long addUser(User user);
public User login(String name,String password);
public User getOneUser(long id);
public User SearchUser(long uid);
public List<User> getUsers(int page);
public void updateState(long id,int state);
public boolean updateUser(User user);
public void deleteUser(long id);
public List<User> getXiaJia(String jhm,int page);
public long getUserSize(int type);
public List<User> getTGUserPC(long uid,int page);


//ÊÖ»ú
public User isExit(String mac,String uid);
public boolean isExitJHM(String jhm);
public User updateUser(String nc,long uid);
public boolean addYQM(User user,String qym,int jinbi);
public void updateUserTgSize(long uid);
public boolean updateChouJiang(long uid,int size);
public User getUser(long uid);
public List<User> getTGUser(long uid,int page);

public List<User> getTGAllUser(long uid);

public List<User> getPaiHang();

}
