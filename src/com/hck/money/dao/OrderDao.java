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
public List<Orders> getUserOrder(long uid);
//获取用户参加的活动
public List<Orders> getHuoDongOrder(long uid);
//获取参加活动信息
public List<Orders> getHuoDong(int page,int type);
/**
 * 兑吧
 * @param order
 * @return
 */
public String addOrderDuiBa(Orders order);
public Orders chuLiOrder(String orderNum,int state);
public boolean orderIsChuLi(String orderNum);


//手机
public List<Orders> getNoChuLiOrdersP(long uid);
public List<Orders> getChuLiOrdersP(long uid,int page);
public boolean deleteOrderP(long id);
public List<Orders> getUserOrderP(long uid,int page);
public List<Orders> getNewOrders();

}
