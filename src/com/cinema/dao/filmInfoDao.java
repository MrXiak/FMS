package com.cinema.dao;

import com.cinema.entity.FilmInfo;
import com.cinema.entity.preFilm;
import com.cinema.util.DBUtil;
import com.cinema.util.pageUtils;
import com.mysql.cj.protocol.Resultset;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class filmInfoDao {
    static {
        //加载驱动
        try{
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void addFilmInfo(FilmInfo filmInfo){
        Connection conn=null;
        Statement stmt=null;
        try {
            //获取数据库连接
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/fms?serverTimezone=GMT%2B8&useSSL=false", "root",  "111");
            //sql语句
            String sql="update film set film_img=?,film_id=?,film_name=?,film_time=?,film_actor=?,film_date=?,film_info=?,film_price=?,film_score=?";
//                    "('"+filmInfo.getFilm_img()+","+filmInfo.getFilm_id()+","+filmInfo.getFilm_name()+","+filmInfo.getFilm_time()+","+filmInfo.getFilm_actor()+","+filmInfo.getFilm_date()+","+filmInfo.getFilm_info()+","+filmInfo.getFilm_price()+","+filmInfo.getFilm_score()+"')";
            //创建sql执行对象
            stmt=conn.createStatement();
            //执行sql语句
            int row =stmt.executeUpdate(sql);
            if (row!=1){
                throw  new RuntimeException("新增电影失败！");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            if (stmt!=null){
                try {
                    stmt.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
        }
    }
    public List<FilmInfo> findAll(){
        Connection conn=null;
        Statement stmt=null;
        List<FilmInfo> filmInfoList=new ArrayList<FilmInfo>();
        try {
            //获取数据库连接
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/fms?serverTimezone=GMT%2B8&useSSL=false", "root",  "111");
            //sql语句
            String sql="select * from film limit 8";
            //创建sql执行对象
            stmt=conn.createStatement();
            //执行sql
            ResultSet rs=stmt.executeQuery(sql);
            //遍历结果集
            while(rs.next()){
                String film_img=rs.getString("film_img");
                Integer film_id= Integer.valueOf(rs.getString("film_id"));
                String film_name=rs.getString("film_name");
                Integer film_time= Integer.valueOf(rs.getString("film_time"));
                String film_actor=rs.getString("film_actor");
                String film_date=rs.getString("film_date");
                String film_info=rs.getString("film_info");
                Double film_price= Double.valueOf(rs.getString("film_price"));
                Double film_score= Double.valueOf(rs.getString("film_score"));
                FilmInfo filmInfo=new FilmInfo(film_img,film_id,film_name,film_time,film_actor,film_date,film_info,film_price,film_score);
                filmInfoList.add(filmInfo);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
            return  filmInfoList;
    }

    public List<preFilm> findPreAll(){
        Connection conn=null;
        Statement stmt=null;
        List<preFilm> preFilmList=new ArrayList<preFilm>();
        try {
            //获取数据库连接
            DBUtil.initConnection();
//            getConnection("jdbc:mysql://localhost:3306/fms?serverTimezone=GMT%2B8&useSSL=false", "root",  "111");
            //sql语句
            String sql="select * from prefilm limit 8";
            //创建sql执行对象
            stmt=conn.createStatement();
            //执行sql
            ResultSet rs=stmt.executeQuery(sql);
            //遍历结果集
            while(rs.next()){
                String pre_film_img=rs.getString("pre_film_img");
                Integer pre_film_id= Integer.valueOf(rs.getString("pre_film_id"));
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
