package com.hck.money.daoserver;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.Share;
import com.hck.money.dao.ShareDao;

public class ShareServer extends HibernateDaoSupport  implements ShareDao {

	public void addShare(Share share) {
		getHibernateTemplate().save(share);

	}

	public void deleteShare(int id) {
		// TODO Auto-generated method stub

	}

	public Share getShare(int id) {
		
		return (Share) getHibernateTemplate().get(Share.class, id);
	}

	public List<Share> getShares() {
		// TODO Auto-generated method stub
		return null;
	}

	public void updateShare(Share share) {
		getHibernateTemplate().update(share);

	}

}
