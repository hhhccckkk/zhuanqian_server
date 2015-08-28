package com.hck.money.dao;

import java.util.List;

import com.hck.money.bean.User;

public interface UserDao {
public User addUser(User user);
public User login(String name,String password);
public User getOneUser(long id);
public User SearchUser(long uid);
public List<User> getUsers(int page);
public void updateState(long id,int state);
public boolean updateUser(User user);
public void deleteUser(long id);
public List<User> getXiaJia(String jhm,int page);
public long getUserSize(int type);


//ÊÖ»ú
public User isExit(String mac);
public boolean isExitJHM(String jhm);
public User updateUser(String nc,long uid);
public boolean addYQM(User user,String qym,int jinbi);
public void updateUserTgSize(long uid);





}
