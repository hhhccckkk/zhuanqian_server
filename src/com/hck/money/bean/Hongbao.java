package com.hck.money.bean;

public class Hongbao {
private long id;
private long uid;
private String uName;
private String content;
private String time;
private int point;
private int isOpen;
private int isXiTong;

public int getIsXiTong() {
	return isXiTong;
}
public void setIsXiTong(int isXiTong) {
	this.isXiTong = isXiTong;
}
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public long getUid() {
	return uid;
}
public void setUid(long uid) {
	this.uid = uid;
}
public String getuName() {
	return uName;
}
public void setuName(String uName) {
	this.uName = uName;
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
public int getPoint() {
	return point;
}
public void setPoint(int point) {
	this.point = point;
}
public int getIsOpen() {
	return isOpen;
}
public void setIsOpen(int isOpen) {
	this.isOpen = isOpen;
}

}
