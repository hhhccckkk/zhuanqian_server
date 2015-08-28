package com.hck.money.dao;

import java.util.List;

import com.hck.money.bean.Tg;

public interface TgDao {
	List<Tg> getList(long uid,int page);
	boolean addTg(Tg tg);
	boolean deleteTg(long id);

}
