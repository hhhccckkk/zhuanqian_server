package com.hck.money.daoserver;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.Hongbao;
import com.hck.money.bean.Orders;
import com.opensymphony.xwork2.ActionContext;

public class HongBaoServer extends HibernateDaoSupport {
	private static final int IS_OPEN=1;
	private List<Hongbao> hongbaos;

	public boolean addHongBao(Hongbao hongbao) {
		try {
			getHibernateTemplate().save(hongbao);
			return true;
		} catch (Exception e) {
			System.err.println("HongBaoServer addHongBao eee: "+e.toString());
			return false;
		}

	}
	
	public boolean updateHongBao(long id){
		try {
			Hongbao hongbao =(Hongbao) getHibernateTemplate().get(Hongbao.class, id);
			if (hongbao.getIsOpen()==IS_OPEN) {
				return false;
			}
			hongbao.setIsOpen(IS_OPEN);
			getHibernateTemplate().update(hongbao);
			return true;
		} catch (Exception e) {
			return false;
		}
		
		
	}

	@SuppressWarnings("unchecked")
	private List<Hongbao> getList(String sql, int page, int num) {
		if (hongbaos == null) {
			hongbaos = new ArrayList<Hongbao>();
		}
		Query query = null;
		Session session = this.getHibernateTemplate().getSessionFactory()
				.openSession();
		query = session.createQuery(sql);
		query.setFirstResult((page - 1) * num);
		query.setMaxResults(num);
		hongbaos = query.list();
		super.releaseSession(session);
		return hongbaos;
	}

	public List<Hongbao> getHongbaos(long uid, int page) {
		String sql = "from Hongbao h where h.uid=" + uid
				+ " order by h.id desc";
		return getList(sql, page, 10);
	}
	public List<Hongbao> getHongbaoPC(int page) {
		String sql = "from Hongbao h order by h.id asc";
		ActionContext.getContext().getSession().put("hbSize", getHongBaoSize());
		return getList(sql, page, 10);
	}
	

	public int getCount(long uid) {
		String sql = "from Hongbao h where h.uid=" + uid
				+ " order by h.id desc";
		return this.getHibernateTemplate().find(sql).size();
	}
	
	public int getCountNoDaKai(long uid) {
		String sql = "from Hongbao h where h.uid=" + uid
				+ " and h.isOpen=0 order by h.id desc";
		return this.getHibernateTemplate().find(sql).size();
	}

  public List<Hongbao> getUserHongBao(long uid){
	  String sql = "from Hongbao h where h.uid=" + uid;
	 return getHibernateTemplate().find(sql);
  }
  public int getHongBaoSize(){
	  String sql = "from Hongbao";
	  return getHibernateTemplate().find(sql).size();
  }
  public void deleteHongBao(long id){
	  getHibernateTemplate().delete(getHibernateTemplate().get(Hongbao.class, id));
  }
 
}
