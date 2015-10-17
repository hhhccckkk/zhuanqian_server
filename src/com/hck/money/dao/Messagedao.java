package com.hck.money.dao;

import java.util.List;

import com.hck.money.bean.Message;

public interface Messagedao {
	public List<Message> getMessages(int page, int type);
	public void updateState(int mId);
	public void deleteMessage(int mId);
	public boolean addMessage(Message message);
	
	//ÊÖ»ú
   public List<Message> getUserMessages(long uid);
   public void changeState(int id);
   public long getCount(Long uid);
   public long getNewMsgId(long uid);
   
}
