package com.hck.money.phone.action;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import net.sf.json.JSONObject;

import com.hck.money.bean.Kind;
import com.hck.money.dao.KindDao;
import com.hck.money.phone.action.BaseAction;

@SuppressWarnings("serial")
public class KindAction extends BaseAction {
	
	private List<Kind> kinds;
	
	private KindDao kDao;

	public List<Kind> getKinds() {
		return kinds;
	}

	public void setKinds(List<Kind> kinds) {
		this.kinds = kinds;
	}

	public KindDao getkDao() {
		return kDao;
	}

	public void setkDao(KindDao kDao) {
		this.kDao = kDao;
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

	

	public void getKindsP() {
		init();
		if (!isPasswordOk(request.getParameter("password"))) {
			return;
		}
		kinds = kDao.getKinds();
		if (kinds==null || kinds.isEmpty()) {
			json.put("isok", false);
		}
		else {
			json.put("kinds", kinds);
		}
		write();
	}
}
