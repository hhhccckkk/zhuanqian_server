package com.hck.money.bean;

public class UserTg {
private long id;
private long uId;
private String tgUrl;
private String downUrl;
private String time;
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public long getuId() {
	return uId;
}
public void setuId(long uId) {
	this.uId = uId;
}

public String getTgUrl() {
	return tgUrl;
}
public void setTgUrl(String tgUrl) {
	this.tgUrl = tgUrl;
}
public String getDownUrl() {
	return downUrl;
}
public void setDownUrl(String downUrl) {
	this.downUrl = downUrl;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}

}
