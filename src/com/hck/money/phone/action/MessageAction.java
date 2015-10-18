package com.hck.money.phone.action;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.hck.money.bean.Message;
import com.hck.money.bean.User;
import com.hck.money.dao.Messagedao;
import com.hck.money.dao.UserDao;
import com.hck.money.push.BaiduPushManger;
import com.hck.money.vo.Contans;
import com.hck.money.vo.MessageBean;

import net.sf.json.JSONObject;

public class MessageAction extends BaseAction {
	
	private long id;
	private int mid;
	private UserDao uDao;

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

	private Messagedao messagedao;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Messagedao getMessagedao() {
		return messagedao;
	}

	public void setMessagedao(Messagedao messagedao) {
		this.messagedao = messagedao;
	}

	public void init() {
		json = new JSONObject();
		if (response == null) {
			response = ServletActionContext.getResponse();
		}
		if (request == null) {
			request = ServletActionContext.getRequest();
		}
		response = ServletActionContext.getResponse();
		request = ServletActionContext.getRequest();
		response.setContentType("text/json;charset=utf-8");
		response.setCharacterEncoding("UTF-8");

	}

	public void getUserMessageP() {
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		List<Message> mList = messagedao.getUserMessages(id);
		if (mList == null || mList.isEmpty()) {
			json.put("isok", false);
		} else {
			json.put("isok", true);
			json.put("message", changeBeans(mList));
		}
		write();
	}

	public void changeMessageStateP() {
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		messagedao.changeState(mid);
	}

	private List<MessageBean> changeBeans(List<Message> bList) {
		MessageBean bean = null;
		List<MessageBean> messageBeans = new ArrayList<MessageBean>();
		for (int i = 0; i < bList.size(); i++) {
			bean = new MessageBean();
			Message message=bList.get(i);
			bean.setId(message.getId());
			bean.setContent(message.getContent());
			bean.setState(message.getState());
			bean.setTime(message.getTime().toString());
			bean.setUid(message.getUid());
			bean.setLaizi(message.getLaizi());
			bean.setType(message.getType());
			bean.setSendUserId(message.getSendUserId());
			messageBeans.add(bean);
		}
		return messageBeans;
	}

	public void deleteMessageP() {
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		 int msg_id =getIntData("msg_id");
		messagedao.deleteMessage(msg_id);
		json.put("isok", true);
		write();
	}

	public void getMessageNoReadP() {
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		long size = messagedao.getCount(id);
		json.put("isok", true);
		json.put("size", size);
		write();
	}

	public void addMesg() {
		init();
		String userName = getStringData("userName");
		String content = getStringData("content");
		long uid = getLongData("uid");
		long sendUserId =getLongData("sendUserId");
		User user = uDao.getOneUser(uid);
		Message message = new Message();
		message.setContent(content);
		message.setLaizi(userName);
		message.setState(0);
		message.setType(Contans.MSG_TYPE_USER);
		message.setSendUserId(sendUserId);
		message.setUid(uid);
		message.setTime(new Timestamp(System.currentTimeMillis()));
		boolean b = messagedao.addMessage(message);
		if (b) {
			json.put("isok", true);
			if (user != null && user.getPushid() != null) {
				BaiduPushManger.sendMsgToOneUser(user.getPushid(),
						Contans.PUSH_TYPE_MSG, userName+"给你发了条消息", "有用户向您发送了一条消息");
			}
		} else {
			json.put("isok", false);
		}
		write();
	}

}
