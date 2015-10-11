package com.hck.money.vo;

import java.sql.Timestamp;

public class MessageBean {
private int id;
private String content;
private String time;
private int state;
private long uid;
private String laizi;

public String getLaizi() {
	return laizi;
}
public void setLaizi(String laizi) {
	this.laizi = laizi;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}

public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}
public int getState() {
	return state;
}
public void setState(int state) {
	this.state = state;
}
public long getUid() {
	return uid;
}
public void setUid(long uid) {
	this.uid = uid;
}
}
