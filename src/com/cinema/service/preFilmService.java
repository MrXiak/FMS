package com.cinema.service;

import com.cinema.entity.preFilm;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class preFilmService {
    static {
        //加载驱动
        try{
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public List<preFilm> findPreAll(){
        Connection conn=null;
        Statement stmt=null;
        List<preFilm> preFilmList=new ArrayList<preFilm>();
        try {
            //获取数据库连接
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/fms?serverTimezone=GMT%2B8&useSSL=false", "root",  "1234");
            //sql语句
            String sql="select * from prefilm limit 8";
            //创建sql执行对象
            stmt=conn.createStatement();
            //执行sql
            ResultSet rs=stmt.executeQuery(sql);
            //遍历结果集
            while(rs.next()){
                String pre_film_img=rs.getString("pre_film_img");
                String pre_film_id= rs.getString("pre_film_id");
                String pre_film_name=rs.getString("pre_film_name");
                String pre_film_time= rs.getString("pre_film_time");
                String pre_film_actor=rs.getString("pre_film_actor");
                String pre_film_date=rs.getString("pre_film_date");
                String pre_film_info=rs.getString("pre_film_info");

                preFilm prfilm=new preFilm(pre_film_img,pre_film_id,pre_film_name,pre_film_time,pre_film_actor,pre_film_date,pre_film_info);
                preFilmList.add(prfilm);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return  preFilmList;
    }
}
