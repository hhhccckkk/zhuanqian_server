package com.hck.money.pc.action;

import java.sql.Timestamp;
import java.util.List;

import com.hck.money.bean.Message;
import com.hck.money.bean.User;
import com.hck.money.dao.Messagedao;
import com.hck.money.dao.UserDao;
import com.hck.money.push.BaiduPushManger;
import com.hck.money.vo.Contans;
import com.opensymphony.xwork2.ActionContext;

@SuppressWarnings("serial")
public class MessageAction extends BaseAction {
	private List<Message> meList;
	private Messagedao messagedao;
	private UserDao uDao;
	private int mid;
    private int type;
    
	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public UserDao getuDao() {
		return uDao;
	}

	public void setuDao(UserDao uDao) {
		this.uDao = uDao;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

	private String idString;
	private Message message;

	public String getIdString() {
		return idString;
	}

	public void setIdString(String idString) {
		this.idString = idString;
	}

	public List<Message> getMeList() {
		return meList;
	}

	public void setMeList(List<Message> meList) {
		this.meList = meList;
	}

	public Messagedao getMessagedao() {
		return messagedao;
	}

	public void setMessagedao(Messagedao messagedao) {
		this.messagedao = messagedao;
	}

	public String getDX() {
		if(page<=0){
			page=1;
		}
		if(type<=0){
			type=1;
		}
		meList = messagedao.getMessages(page,type);
		if (meList != null && !meList.isEmpty()) {
			ActionContext.getContext().getSession().put("mPage", page);
			ActionContext.getContext().getSession().put("msgType", type);
		}
		return SUCCESS;
	}

	public String deleteMessage() {
		if (null != idString) {
			String[] id = idString.split(",");
			for (int j = 0; j < id.length; j++) {
				messagedao.deleteMessage(Integer.parseInt(id[j]));
			}
			return SUCCESS;
		} else if (mid != 0) {
			messagedao.deleteMessage(mid);
			return SUCCESS;
		}
		addActionError("未知错误");
		return SUCCESS;
	}

	public String addMessage() {
		if (message != null) {
			message.setTime(new Timestamp(System.currentTimeMillis()));
			message.setState(0);
		}
		if (message.getUid() == null) {
			message.setType(Contans.MSG_TYPE_ADMIN);
			message.setUid(0l);
			message.setLaizi("admin");
			BaiduPushManger.sendMsgToAllUser("您有一条最新的未读消息", message.getContent(), Contans.PUSH_TYPE_MSG);
			
		} else {
			message.setType(Contans.MSG_TYPE_XITONG);
			message.setLaizi("系统");
			User user =uDao.getOneUser(message.getUid());
			if(user!=null && user.getPushid()!=null){
				BaiduPushManger.sendMsgToOneUser(user.getPushid(),Contans.PUSH_TYPE_MSG,"您有一条最新的未读消息", message.getContent());
			}
		}
		
		messagedao.addMessage(message);
		return SUCCESS;
	}
}
