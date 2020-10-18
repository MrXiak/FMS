package com.cinema.dao.impl;

import com.cinema.dao.IOrderDao;
import com.cinema.entity.OrderInfo;
import com.cinema.entity.preFilm;
import com.cinema.util.DBUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class IOrderDaoImpl implements IOrderDao {
    @Override
    public OrderInfo insertOrder(OrderInfo orderInfo) {
        DBUtil.initConnection();
        String sql="insert into orderinfo values (?,?,?,?,?,?,?)";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(orderInfo.getOrder_id(),orderInfo.getFilm_name(),orderInfo.getSession_time(),orderInfo.getCinema_name(),orderInfo.getSeat(),orderInfo.getSum_price(),orderInfo.getPay_state());
        DBUtil.executeUpdate();
        DBUtil.close();
        return null;
    }

    @Override
    public List<OrderInfo> findAllOrder() {
        DBUtil.initConnection();//初始化connection对象
        String sql="select * from orderinfo";
        DBUtil.initPrepareStatement(sql);
        DBUtil.executeQuery();
        List<OrderInfo> Olist=new ArrayList<>();
        ResultSet rs=DBUtil.getRes();
        try {
            while (rs.next()) {
                long order_id= Long.parseLong(rs.getString("order_id"));
                String film_name = rs.getString("film_name");
                String session_time = rs.getString("session_time");
                String cinema_name=rs.getString("cinema_name");
                String seat=rs.getString("seat");
                String sum_price=rs.getString("sum_price");
                String pay_state=rs.getString("pay_state");

                OrderInfo oinfo=new OrderInfo();
                oinfo.setOrder_id(order_id);
                oinfo.setFilm_name(film_name);
                oinfo.setSession_time(session_time);
                oinfo.setCinema_name(cinema_name);
                oinfo.setSeat(seat);
                oinfo.setSum_price(sum_price);
                oinfo.setPay_state(pay_state);
                Olist.add(oinfo);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        DBUtil.close();
        return Olist;
    }

    @Override
    public OrderInfo del_order(String oid) {
        DBUtil.initConnection();
        String sql="delete from orderinfo where order_id=?";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(oid);
        DBUtil.executeUpdate();
        DBUtil.close();
        return null;
    }
}
