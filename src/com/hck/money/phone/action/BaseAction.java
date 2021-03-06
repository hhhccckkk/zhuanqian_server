package com.hck.money.phone.action;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.hck.money.vo.Contans;

import net.sf.json.JSONObject;

public class BaseAction {
	public String password;
	public JSONObject json;
	public String jsonString;
	public HttpServletRequest request = null;
	public HttpServletResponse response = null;

	public boolean isPasswordOk(String password) {
		if (password == null || "".equals(password)
				|| !"HCK123hck".equals(password)) {
			return false;
		}
		return true;
	}
	public boolean isKeyOK(String key) {
		if (password == null || "".equals(key)
				|| !Contans.key.equals(key)) {
			return false;
		}
		return true;
	}

	public void init() {
		json = new JSONObject();

		response = ServletActionContext.getResponse();

		request = ServletActionContext.getRequest();

		response = ServletActionContext.getResponse();
		request = ServletActionContext.getRequest();
		response.setContentType("text/json;charset=utf-8");
		response.setCharacterEncoding("UTF-8");

	}

	public void write() {

		jsonString = json.toString();
		OutputStream oStream = null;
		try {
			oStream = response.getOutputStream();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		try {
			oStream.write(jsonString.getBytes("UTF-8"));
			oStream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		response = null;
		request = null;
		oStream = null;
	}

	public String getStringData(String key) {
		return request.getParameter(key);
	}

	public int getIntData(String key) {
		int data = Integer.parseInt(getStringData(key));
		return data;
	}

	public long getLongData(String key) {
		if (getStringData(key) == null) {
			return 0l;
		}
		long data = Long.parseLong(getStringData(key));
		return data;
	}
}
