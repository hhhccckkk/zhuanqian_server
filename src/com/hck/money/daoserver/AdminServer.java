package com.hck.money.daoserver;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.Admin;
import com.hck.money.dao.AdminDao;
import com.hck.money.util.Md5;

public class AdminServer extends HibernateDaoSupport implements AdminDao {
	Admin admin2=new Admin();
	@SuppressWarnings("unchecked")
	public Admin login(Admin admin) {
		
	    List<Admin> admin2=null;
	    Admin admin3=null;
		//String sql="from Admin a where a.name='"+admin.getName()+"' and a.password='"+Md5.MD5(admin.getPassword())+"'";
		String sql="from Admin a where a.name='"+admin.getName()+"' and a.password='"+admin.getPassword()+"'";
		admin2=this.getHibernateTemplate().find(sql);
		if (admin2.size()>0) {
			admin3=admin2.get(0);
		}
		return admin3;
	}

	public boolean updateAdmin(Admin admin) {
		try {
			getAdmin();
			String string=Md5.MD5(admin.getName());
			admin2.setPassword(admin.getPassword());
			admin2.setName(admin.getName());
			this.getHibernateTemplate().update(admin2);
			System.out.print("okokok");
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	private  void getAdmin()
	{
		admin2=(Admin) this.getHibernateTemplate().get(Admin.class, 1);
	}
}
