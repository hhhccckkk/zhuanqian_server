package com.hck.money.pc.action;

import java.util.List;

import org.apache.struts2.components.ActionError;

import com.hck.money.bean.Kind;
import com.hck.money.dao.KindDao;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class KindAction extends ActionSupport{
	private List<Kind> kinds;
	public List<Kind> getKinds() {
		return kinds;
	}
	public void setKinds(List<Kind> kinds) {
		this.kinds = kinds;
	}

	private Kind kind;
	private int id;
    private KindDao kindDao;
    private String idString;
	public String getIdString() {
		return idString;
	}
	public void setIdString(String idString) {
		this.idString = idString;
	}
	public Kind getKind() {
		return kind;
	}
	public void setKind(Kind kind) {
		this.kind = kind;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public KindDao getKindDao() {
		return kindDao;
	}
	public void setKindDao(KindDao kindDao) {
		this.kindDao = kindDao;
	}
	
	public String getMoneyKind()
	{
		kinds=kindDao.getKinds();
		if (kinds==null || kinds.isEmpty()) {
			addActionError("没有数据");
		}
		return SUCCESS;
	}
	public String deleteKind()
	{
		if (null!=idString) {
			String[] id=idString.split(",");
			for (int j = 0; j < id.length; j++) {
				kindDao.deleteKind(Integer.parseInt(id[j]));
			}
			return SUCCESS;
		}
		else if (id!=0) {
			kindDao.deleteKind(id);
			return SUCCESS;
		}
		addActionError("未知错误");
		return ERROR;
	}
	
	public String getOneKind()
	{
		kind=null;
		kind=kindDao.getOneKind(id);
		if (kind!=null) {
			addActionError("获取数据失败");
		}
		return SUCCESS;
	}
	public String updateKind()
	{
		kindDao.upateKind(kind);
		addActionError("修改成功");
		return SUCCESS;
	}
	public String addKind()
	{
		kind.setIsok(1);
		kindDao.addKind(kind);
		return SUCCESS;
	}

}
