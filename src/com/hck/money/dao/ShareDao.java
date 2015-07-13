package com.hck.money.dao;

import java.util.List;

import com.hck.money.bean.Share;

public interface ShareDao {
	
public Share getShare(int id);
public List<Share> getShares();
public void addShare(Share share);
void updateShare(Share share);
void deleteShare(int id);
}
