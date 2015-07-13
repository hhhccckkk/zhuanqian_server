package com.hck.money.pc.action;

import java.util.List;

import com.hck.money.bean.JiLuTongjiBean;
import com.hck.money.bean.Jilu;
import com.hck.money.dao.JiLuDao;
import com.opensymphony.xwork2.ActionContext;

@SuppressWarnings("serial")
public class JiLuAction extends BaseAction {
	private List<Jilu> jilus;
	private JiLuDao jDao;
	private String idString;
	private JiLuTongjiBean bean;

	public JiLuTongjiBean getBean() {
		return bean;
	}

	public void setBean(JiLuTongjiBean bean) {
		this.bean = bean;
	}

	public String getIdString() {
		return idString;
	}

	public void setIdString(String idString) {
		this.idString = idString;
	}

	public JiLuDao getjDao() {
		return jDao;
	}

	public void setjDao(JiLuDao jDao) {
		this.jDao = jDao;
	}

	public List<Jilu> getJilus() {
		return jilus;
	}

	public void setJilus(List<Jilu> jilus) {
		this.jilus = jilus;
	}

	public String getUserJiLu() {
		jilus = jDao.getJilus(page, id);
		if (jilus == null) {
			addActionError("没有数据");
		}
		else {
			bean=jDao.getJiLuTongjiBean(id);
		}
		ActionContext.getContext().getSession().put("jiluPage", page);
		ActionContext.getContext().getSession().put("jiluid", id);
		return SUCCESS;
	}

	public String deleteUserJL() {
		if (null != idString) {
			String[] id = idString.split(",");
			for (int j = 0; j < id.length; j++) {
				jDao.deleteJU(Integer.parseInt(id[j]));
			}
			return SUCCESS;
		} else if (id != 0) {
			jDao.deleteJU(id);
			return SUCCESS;
		}
		addActionError("未知错误");
		return ERROR;
	}

}
