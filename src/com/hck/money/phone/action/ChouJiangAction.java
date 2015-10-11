package com.hck.money.phone.action;

import java.sql.Timestamp;
import java.util.List;

import com.hck.money.bean.Choujiang;
import com.hck.money.daoserver.ChouJiangServer;
import com.hck.money.push.BaiduPushManger;
import com.hck.money.vo.Contans;

public class ChouJiangAction extends BaseAction {
	private ChouJiangServer chouJiangServer;

	public ChouJiangServer getChouJiangServer() {
		return chouJiangServer;
	}

	public void setChouJiangServer(ChouJiangServer chouJiangServer) {
		this.chouJiangServer = chouJiangServer;
	}

	public void addCJ() {
		init();
		String touxiang = getStringData("touxiang");
		String userName = getStringData("username");
		long uid = getLongData("uid");
		String content = getStringData("content");
		int point=getIntData("point");
		Choujiang bean = new Choujiang();
		bean.setContent(content);
		bean.setTime(new Timestamp(System.currentTimeMillis()).toString());
		bean.setTouxiang(touxiang);
		bean.setUid(uid);
		bean.setUsername(userName);
		boolean b = chouJiangServer.addChouJiang(bean);
		if (b) {
			json.put("isok", true);
			if(point>0){
				BaiduPushManger.sendMsgToAllUser("恭喜用户: "+userName, "用户"+userName+"抽奖获取金币"+point+"个", Contans.PUSH_TYPE_NOTIFY);
			}
		} else {
			json.put("isok", false);
		}
		write();

	}
	public void getCJinfo(){
		init();
		long uid = getLongData("uid");
		List<Choujiang> choujiangs =chouJiangServer.getChouJiangP(uid);
		if(choujiangs==null || choujiangs.isEmpty()){
			json.put("isok", false);
		}
		else{
			json.put("isok", true);
			json.put("data", choujiangs);
		}
		write();
	}

}
