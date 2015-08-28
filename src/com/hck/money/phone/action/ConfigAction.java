package com.hck.money.phone.action;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.hck.money.bean.Config;
import com.hck.money.dao.Messagedao;
import com.hck.money.dao.NewDao;
import com.hck.money.daoserver.ConfigServer;
import com.hck.money.daoserver.HongBaoServer;

import net.sf.json.JSONObject;

public class ConfigAction extends BaseAction {
	
	private ConfigServer configServer;
    private int configId;
	private HongBaoServer hBaoServer;
	private Messagedao messagedao;
	
	public HongBaoServer gethBaoServer() {
		return hBaoServer;
	}
	public void sethBaoServer(HongBaoServer hBaoServer) {
		this.hBaoServer = hBaoServer;
	}
	public Messagedao getMessagedao() {
		return messagedao;
	}
	public void setMessagedao(Messagedao messagedao) {
		this.messagedao = messagedao;
	}
	public int getConfigId() {
		return configId;
	}
	public void setConfigId(int configId) {
		this.configId = configId;
	}

	public ConfigServer getConfigServer() {
		return configServer;
	}
	public void setConfigServer(ConfigServer configServer) {
		this.configServer = configServer;
	}
	public void init() {
		json = new JSONObject();
		response = ServletActionContext.getResponse();
		request = ServletActionContext.getRequest();
		response.setContentType("text/json;charset=utf-8");
		response.setCharacterEncoding("UTF-8");
	}
	
	public void getConfigP()
	{
		init();
		Config config=configServer.getConfig();
		if (config==null) {
			json.put("isok", false);
		}
		else {
			json.put("isok", true);
			json.put("data", config);
		}
		write();
		response=null;
		request=null;
	}
	/**
	 * 获取红包数量消息条数
	 */
	public void getSize(){
		init();
		long uid =getLongData("uid");
		long megId =messagedao.getNewMsgId(uid);
		int hongbaoSize = hBaoServer.getCountNoDaKai(uid);
		json.put("msgId", megId);
		json.put("hongbaoSize", hongbaoSize);
		write();	
		response=null;
		request=null;
	}

}
