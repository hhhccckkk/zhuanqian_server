package com.hck.money.phone.action;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.hck.money.bean.Tg;
import com.hck.money.dao.TgDao;
import com.hck.money.vo.TgBean;

import net.sf.json.JSONObject;

public class TgAction extends BaseAction {

	private TgDao tgDao;
	private long uid;
	private long tid;
	private String content;
	private String name;
	private int page;

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public TgDao getTgDao() {
		return tgDao;
	}

	public void setTgDao(TgDao tgDao) {
		this.tgDao = tgDao;
	}

	public long getUid() {
		return uid;
	}

	public void setUid(long uid) {
		this.uid = uid;
	}

	public long getTid() {
		return tid;
	}

	public void setTid(long tid) {
		this.tid = tid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	// 增加红包推广信息
	public void addTg() {
		init();
		Tg tg = new Tg();
		int type = getIntData("type");
		tg.setUserName(name);
		tg.setContent(content);
		tg.setType(0); // 0,红包,任务.
		tg.setTime(new Timestamp(System.currentTimeMillis()));
		tg.setUid(uid);
		boolean b = tgDao.addTg(tg);
		if (b) {
			json.put("isok", true);
		} else {
			json.put("isok", false);
		}
		write();
	}

	public void getTg() {
		init();
		List<Tg> tgs = tgDao.getList(uid, page);
		if (tgs != null && !tgs.isEmpty()) {
			json.put("isok", true);
			json.put("tgs", change(tgs));
		} else {
			json.put("isok", false);
		}
		write();
	}

	private List<TgBean> change(List<Tg> bList) {
		TgBean bean = null;
		List<TgBean> beans = new ArrayList<TgBean>();
		for (int i = 0; i < bList.size(); i++) {
			bean = new TgBean();
			bean.setContent(bList.get(i).getContent());
			bean.setId(bList.get(i).getId());
			bean.setTime(bList.get(i).getTime().toString());
			bean.setUid(bList.get(i).getUid());
			bean.setUserName(bList.get(i).getUserName());
			beans.add(bean);
		}
		return beans;
	}

	public void deleteTg() {
		init();
		boolean b = tgDao.deleteTg(tid);
		if (b) {
			json.put("isok", true);
		} else {
			json.put("isok", false);
		}
		write();
	}
}
