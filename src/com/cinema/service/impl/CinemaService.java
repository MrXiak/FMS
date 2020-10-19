package com.cinema.service.impl;

import com.cinema.entity.Cinema;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CinemaService {
    static {
        //加载驱动
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public List<Cinema> findCinema(){
        Connection conn=null;
        Statement stmt=null;
        List<Cinema>cinemaList=new ArrayList<Cinema>();
        try {
            //获取数据库连接
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/fms?serverTimezone=GMT%2B8&useSSL=false", "root",  "1234");
            //创建sql语句
            String sql="select * from cinema";
            //创建sql执行对象
            stmt=conn.createStatement();
            //执行sql
            ResultSet rs=stmt.executeQuery(sql);
            //遍历结果集
            while (rs.next()){

                Integer cinema_id= Integer.valueOf(rs.getString("cinema_id"));
                String cinema_name=rs.getString("cinema_name");
                Integer area_id= Integer.valueOf(rs.getString("area_id"));

                Cinema cinema=new Cinema(cinema_id,cinema_name,area_id);
                cinemaList.add(cinema);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cinemaList;
    }
}
