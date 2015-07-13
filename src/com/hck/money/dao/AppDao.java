package com.hck.money.dao;

import java.util.List;

import com.hck.money.bean.Apps;
import com.hck.money.bean.Userapp;

public interface AppDao {
  List<Apps>  getApps(int page);
  void addApp(Apps apps);
  void updateApp(Apps app);
  Apps getOneApp(int id);
  void delete(int id);
  boolean isExit(long uid,int aid);
  List<Apps> getAppsP(int page,long uid);
  
}
