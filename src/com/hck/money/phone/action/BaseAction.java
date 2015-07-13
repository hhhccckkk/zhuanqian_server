package com.hck.money.phone.action;

public class BaseAction {
	public String password;
	public boolean isPasswordOk(String password)
	{
		if (password==null || "".equals(password) || !"HCK123hck".equals(password)) {
			return false;
		}
		return true;
	}
}
