package com.hck.money.pc.action;


import com.hck.money.bean.Share;
import com.hck.money.dao.ShareDao;

@SuppressWarnings("serial")
public class ShareAction extends BaseAction{
	private Share share;
	private ShareDao sDao;
	public Share getShare() {
		return share;
	}
	public void setShare(Share share) {
		this.share = share;
	}
	public ShareDao getsDao() {
		return sDao;
	}
	public void setsDao(ShareDao sDao) {
		this.sDao = sDao;
	}
	public String addShare()
	{
		sDao.addShare(share);
		return SUCCESS;
	}
	public String getShares()
	{
		share=sDao.getShare(1);
		return SUCCESS;
	}
	public String updateShare()
	{
		sDao.updateShare(share);
		return SUCCESS;
	}

}
