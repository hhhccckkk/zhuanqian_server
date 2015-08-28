package com.hck.money.phone.action;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.hck.money.bean.Message;
import com.hck.money.dao.Messagedao;
import com.hck.money.vo.MessageBean;

import net.sf.json.JSONObject;

public class MessageAction extends BaseAction {

	private long id;
	private int mid;

	

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
		if (response==null) {
			response = ServletActionContext.getResponse();
		}
		if (request==null) {
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
		if (mList == null|| mList.isEmpty()) {
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
		List<MessageBean> messageBeans=new ArrayList<MessageBean>();
		for (int i = 0; i < bList.size(); i++) {
                 bean=new MessageBean();
                 bean.setId(bList.get(i).getId());
                 bean.setContent(bList.get(i).getContent());
                 bean.setState(bList.get(i).getState());
                 bean.setTime(bList.get(i).getTime().toString());
                 bean.setUid(bList.get(i).getUid());
                 messageBeans.add(bean);
		}
		return messageBeans;
	}
	
	public void deleteMessageP()
	{
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		messagedao.deleteMessage(mid);
		json.put("isok", true);
		write();
	}
	
	public void getMessageNoReadP()
	{
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		long size=messagedao.getCount(id);
		json.put("isok", true);
		json.put("size", size);
		write();
	}

}
