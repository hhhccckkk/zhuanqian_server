package com.hck.money.daoserver;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.Orders;
import com.hck.money.bean.TGApp;
import com.hck.money.util.FileUtil;
import com.hck.money.vo.Contans;
import com.opensymphony.xwork2.ActionContext;

public class TGAppServer extends HibernateDaoSupport {

	public boolean addTgApp(TGApp app) {
		try {
			getHibernateTemplate().save(app);
			return true;
		} catch (Exception e) {
			System.err.println("addTgApp error: " + e.toString());
			return false;
		}
	}

	public TGApp getUserTGUrl(long uid) {
		String sql = "from TGApp tg where tg.uid=" + uid;
		List<TGApp> apps = getHibernateTemplate().find(sql);
		TGApp app = null;
		if (apps != null && !apps.isEmpty()) {
			app = apps.get(0);
		}
		return app;

	}

	public void updateTGUrlSize(long id) {
		try {
			String sql = "from TGApp tg where tg.uid=" + id;
			List<TGApp> apps = getHibernateTemplate().find(sql);
			TGApp app = null;
			if (apps != null && !apps.isEmpty()) {
				app = apps.get(0);
			}
			app.setSize(app.getSize() + 1);
			getHibernateTemplate().update(app);
		} catch (Exception e) {
		}

	}
	
	@SuppressWarnings("unchecked")
	private List<TGApp> getList(String sql, int page, int num) {
		List<TGApp> tgApps=null;
			tgApps = new ArrayList<TGApp>();
		Query query = null;
		Session session = this.getHibernateTemplate().getSessionFactory()
				.openSession();
		query = session.createQuery(sql);
		query.setFirstResult((page - 1) * num);
		query.setMaxResults(num);
		tgApps = query.list();
		super.releaseSession(session);
		return tgApps;
	}
	
	public List<TGApp> getApps(int page){
		String sql = "from TGApp t order by t.id desc";
		ActionContext.getContext().getSession().put("tgbSize", getCount(sql));
		return getList(sql, page, 12);
	}
	private int getCount(String sql) {
		return this.getHibernateTemplate().find(sql).size();
	}
	
	public void deleteTGB(long id){
		TGApp app =(TGApp) getHibernateTemplate().get(TGApp.class, id);
		String filePath=Contans.PATH+app.getDownUrl();
		System.out.print("path: "+filePath);
		File file =new File(filePath);
		FileUtil.deleteFile(file);
		getHibernateTemplate().delete(app);
		
	}

}
