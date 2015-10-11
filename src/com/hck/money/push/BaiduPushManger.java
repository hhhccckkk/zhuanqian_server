package com.hck.money.push;

import com.baidu.yun.push.auth.PushKeyPair;
import com.baidu.yun.push.client.BaiduPushClient;
import com.baidu.yun.push.exception.PushClientException;
import com.baidu.yun.push.exception.PushServerException;
import com.hck.money.vo.Contans;

public class BaiduPushManger {
	private static BaiduPushClient baiduClient;

	public static BaiduPushClient getBaiduPushClient() {
		if (baiduClient == null) {
			PushKeyPair pair = new PushKeyPair(Contans.BAIDU_PUSH_API_KEY,
					Contans.BAIDU_PUSH_SECRETKEY);
			baiduClient = new BaiduPushClient(pair);
		}
		return baiduClient;
	}
	
	public static void sendMsgToOneUser(String userChannelId,int type,String title,String msg){
		try {
			PushMsgToOneUser.pushOneUserMsg(userChannelId, type, title, msg);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	
	public static void sendMsgToAllUser(String title,String msg,int type){
	try {
		PushMsgToAllUser.pushAllUserMsg(title, msg, type);
	} catch (Exception e) {
	}
		
	}

}
