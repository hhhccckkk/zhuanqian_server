package com.hck.money.push;

import net.sf.json.JSONObject;

import com.baidu.yun.core.log.YunLogEvent;
import com.baidu.yun.core.log.YunLogHandler;
import com.baidu.yun.push.auth.PushKeyPair;
import com.baidu.yun.push.client.BaiduPushClient;
import com.baidu.yun.push.constants.BaiduPushConstants;
import com.baidu.yun.push.exception.PushClientException;
import com.baidu.yun.push.exception.PushServerException;
import com.baidu.yun.push.model.PushMsgToAllRequest;
import com.baidu.yun.push.model.PushMsgToAllResponse;
import com.hck.money.vo.Contans;

public class PushMsgToAllUser {
	public static void pushAllUserMsg(String title,String msg,int type) throws PushClientException,
			PushServerException {
		if (msg == null) {
			return;
		}

		BaiduPushClient baiduPushClient = BaiduPushManger.getBaiduPushClient();
		baiduPushClient.setChannelLogHandler(new YunLogHandler() {
			public void onHandle(YunLogEvent event) {
			}
		});

		try {
			JSONObject notification = new JSONObject();
			notification.put("title",title);
			notification.put("description", msg);
			notification.put("open_type", type);
			PushMsgToAllRequest request = new PushMsgToAllRequest()
					.addMsgExpires(new Integer(3600)).addMessageType(0)
					.addMessage(notification.toString())
				    .addMessageType(0)
					.addSendTime(System.currentTimeMillis() / 1000 + 120) // 设置定时推送时间，必需超过当前时间一分钟，单位秒.实例2分钟后推送
					.addDeviceType(3);
			PushMsgToAllResponse response = baiduPushClient
					.pushMsgToAll(request);
		} catch (PushClientException e) {
			if (BaiduPushConstants.ERROROPTTYPE) {
				throw e;
			} else {
				e.printStackTrace();
			}
		} catch (PushServerException e) {
			if (BaiduPushConstants.ERROROPTTYPE) {
				throw e;
			} else {
			}
		}
	}
}
