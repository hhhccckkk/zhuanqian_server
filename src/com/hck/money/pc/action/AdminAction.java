package com.hck.money.pc.action;

import com.hck.money.bean.Admin;
import com.hck.money.daoserver.AdminServer;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private AdminServer aServer;
	private Admin admin;

	public AdminServer getaServer() {
		return aServer;
	}

	public void setaServer(AdminServer aServer) {
		this.aServer = aServer;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public String login() {
		Admin admin2 = aServer.login(admin);
		if (admin2 == null || admin2.getName() == null) {
			addActionError("µÇÂ½Ê§°Ü");
			return ERROR;
		}
		ActionContext.getContext().getSession().put("admin",admin2);
		return SUCCESS;
	}
	
	public String updateAdmin()
	{
		Boolean b=aServer.updateAdmin(admin);
		if (b) {
			return SUCCESS;
		}
		addActionError("ÐÞ¸ÄÊ§°Ü");
			return ERROR;
	}

}
