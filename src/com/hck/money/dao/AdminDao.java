package com.hck.money.dao;

import com.hck.money.bean.Admin;

public interface AdminDao {
Admin login(Admin admin);
boolean updateAdmin(Admin admin);
}
