package com.hck.money.dao;

import java.util.List;

import com.hck.money.bean.Orders;

public interface OrderDao {
public List<Orders> getEndOrders(int page);
public List<Orders> getNoChuLiOrders(int page);
public Orders getOneOrder(long id);
public boolean dealOrder(long id);
public boolean deleteOrder(long id);
public boolean addOrder(Orders orders);
public Orders searchOrder(long id);
public List<Orders> getMyOrders(int page);


//ÊÖ»ú
public List<Orders> getNoChuLiOrdersP(long uid);
public List<Orders> getChuLiOrdersP(long uid);
public boolean deleteOrderP(long id);
}
