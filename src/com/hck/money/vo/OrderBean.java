package com.hck.money.vo;

import java.sql.Timestamp;

public class OrderBean {
 private long id;
 private String userName;
 private String content;
 private String timestamp;
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getTimestamp() {
	return timestamp;
}
public void setTimestamp(String timestamp) {
	this.timestamp = timestamp;
}

}
