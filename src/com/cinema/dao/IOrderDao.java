package com.cinema.dao;

import com.cinema.entity.OrderInfo;
import com.cinema.entity.User;
import com.cinema.entity.preFilm;
import com.mysql.cj.x.protobuf.MysqlxCrud;

import java.util.List;

public interface IOrderDao {
    OrderInfo insertOrder(OrderInfo orderInfo);
    List<OrderInfo> findAllOrder();
    OrderInfo del_order(String oid);
}
