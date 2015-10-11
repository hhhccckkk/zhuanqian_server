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
		meList = messagedao.getMessages(page);
		if (meList != null && !meList.isEmpty()) {
			ActionContext.getContext().getSession().put("mPage", page);
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
			message.setType(1);
			message.setUid(1l);
			BaiduPushManger.sendMsgToAllUser("您有一条最新的未读消息", message.getContent(), Contans.PUSH_TYPE_MSG);
			
		} else {
			message.setType(0);
			User user =uDao.getOneUser(message.getUid());
			if(user!=null && user.getPushid()!=null){
				BaiduPushManger.sendMsgToOneUser(user.getPushid(),Contans.PUSH_TYPE_MSG,"您有一条最新的未读消息", message.getContent());
			}
		}
		message.setLaizi("系统");
		messagedao.addMessage(message);
		return SUCCESS;
	}
}
