package com.hck.money.push;

import net.sf.json.JSONObject;

import com.baidu.yun.core.log.YunLogEvent;
import com.baidu.yun.core.log.YunLogHandler;
import com.baidu.yun.push.auth.PushKeyPair;
import com.baidu.yun.push.client.BaiduPushClient;
import com.baidu.yun.push.constants.BaiduPushConstants;
import com.baidu.yun.push.exception.PushClientException;
import com.baidu.yun.push.exception.PushServerException;
import com.baidu.yun.push.model.PushMsgToSingleDeviceRequest;
import com.baidu.yun.push.model.PushMsgToSingleDeviceResponse;
/**
 * {  
    "title" : "hello" ,  
    "description": "hello world" //��ѡ  
    "notification_builder_id": 0, //��ѡ  
    "notification_basic_style": 7, //��ѡ  
    "open_type":0, //��ѡ  
    "url": "http://developer.baidu.com", //��ѡ  
    "pkg_content":"", //��ѡ  
    "custom_content":{"key":"value"},  
}
 * @author Administrator
 *
 */
public class PushMsgToOneUser {
	public static void pushOneUserMsg(String userChannelId,int type,String title,String msg) throws PushClientException,
			PushServerException {
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
			PushMsgToSingleDeviceRequest request = new PushMsgToSingleDeviceRequest()
					.addChannelId(userChannelId)
					.addMsgExpires(new Integer(36000)). // message��Чʱ��
					addMessageType(0).// 1��֪ͨ,0:͸����Ϣ. Ĭ��Ϊ0 ע��IOSֻ��֪ͨ.
					addMessage(notification.toString()).
					addDeviceType(3);// 
			PushMsgToSingleDeviceResponse response = baiduPushClient
					.pushMsgToSingleDevice(request);
			
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
