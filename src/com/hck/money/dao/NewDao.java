package com.hck.money.dao;

import com.hck.money.bean.Config;

public interface NewDao {
	public Config getNew(int id);
	public void addNew(Config news);
	public void updateNew(Config news);
	public void deleteNew();

}
