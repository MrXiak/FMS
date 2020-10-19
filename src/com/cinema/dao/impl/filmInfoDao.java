package com.cinema.dao.impl;

import com.cinema.entity.FilmInfo;
import com.cinema.entity.User;
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

//    public void addFilmInfo(FilmInfo filmInfo){
//        Connection conn=null;
//        Statement stmt=null;
//        try {
//            //获取数据库连接
//            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/fms?serverTimezone=GMT%2B8&useSSL=false", "root",  "111");
//            //sql语句
//            String sql="update film set film_img=?,film_id=?,film_name=?,film_time=?,film_actor=?,film_date=?,film_info=?,film_price=?,film_score=?";
////                    "('"+filmInfo.getFilm_img()+","+filmInfo.getFilm_id()+","+filmInfo.getFilm_name()+","+filmInfo.getFilm_time()+","+filmInfo.getFilm_actor()+","+filmInfo.getFilm_date()+","+filmInfo.getFilm_info()+","+filmInfo.getFilm_price()+","+filmInfo.getFilm_score()+"')";
//            //创建sql执行对象
//            stmt=conn.createStatement();
//            //执行sql语句
//            int row =stmt.executeUpdate(sql);
//            if (row!=1){
//                throw  new RuntimeException("新增电影失败！");
//            }
//        } catch (SQLException throwables) {
//            throwables.printStackTrace();
//        }finally {
//            if (stmt!=null){
//                try {
//                    stmt.close();
//                } catch (SQLException throwables) {
//                    throwables.printStackTrace();
//                }
//            }
//        }
//    }

    public FilmInfo selectByFilmId(String fid) throws SQLException {
        DBUtil.initConnection();
        String sql="select * from film where film_id=?";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(fid);
        DBUtil.executeQuery();
        ResultSet rs=DBUtil.getRes();
        while(rs.next()) {
            String film_img = rs.getString("film_img");
            String film_id = rs.getString("film_id");
            String film_name = rs.getString("film_name");
            String film_type = rs.getString("film_type");
            String film_time = rs.getString("film_time");
            String film_actor = rs.getString("film_actor");
            String film_date = rs.getString("film_date");
            String film_version = rs.getString("film_version");
            String film_info = rs.getString("film_info");
            String film_price = rs.getString("film_price");
            String film_score = rs.getString("film_score");
            FilmInfo filmInfo = new FilmInfo(film_img, film_id, film_name, film_type, film_time, film_actor, film_date, film_version, film_info, film_price, film_score);
            return filmInfo;
        }
        return  null;
    }

    public preFilm selectBypreFilmId(String prefid) throws SQLException {
        DBUtil.initConnection();
        String sql="select * from prefilm where pre_film_id=?";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(prefid);
        DBUtil.executeQuery();
        ResultSet rs=DBUtil.getRes();
        while(rs.next()) {
            String pre_film_img = rs.getString("pre_film_img");
            String pre_film_id = rs.getString("pre_film_id");
            String pre_film_name = rs.getString("pre_film_name");
            String pre_film_type = rs.getString("pre_film_type");
            String pre_film_time = rs.getString("pre_film_time");
            String pre_film_actor = rs.getString("pre_film_actor");
            String pre_film_date = rs.getString("pre_film_date");
            String pre_film_version = rs.getString("pre_film_version");
            String pre_film_info = rs.getString("pre_film_info");
            preFilm prefilm = new preFilm(pre_film_img, pre_film_id, pre_film_name, pre_film_type,pre_film_time, pre_film_actor, pre_film_date, pre_film_version, pre_film_info);
            return prefilm;
        }
        return  null;
    }

    public List<FilmInfo> findAll(){
        Connection conn=null;
        Statement stmt=null;
        List<FilmInfo> filmInfoList=new ArrayList<FilmInfo>();
        try {
            //获取数据库连接
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/fms?serverTimezone=GMT%2B8&useSSL=false", "root",  "111");
            //sql语句
            String sql="select * from film limit 8 ";
            //创建sql执行对象
            stmt=conn.createStatement();
            //执行sql
            ResultSet rs=stmt.executeQuery(sql);
            //遍历结果集
            while(rs.next()){
                String film_img=rs.getString("film_img");
                String film_id= rs.getString("film_id");
                String film_name=rs.getString("film_name");
                String film_type=rs.getString("film_type");
                String film_time= rs.getString("film_time");
                String film_actor=rs.getString("film_actor");
                String film_date=rs.getString("film_date");
                String film_version=rs.getString("film_version");
                String film_info=rs.getString("film_info");
                String film_price= rs.getString("film_price");
                String film_score= rs.getString("film_score");
                FilmInfo filmInfo=new FilmInfo(film_img,film_id,film_name,film_type,film_time,film_actor,film_date,film_version,film_info,film_price,film_score);
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
                String pre_film_id= rs.getString("pre_film_id");
                String pre_film_name=rs.getString("pre_film_name");
                String pre_film_type=rs.getString("pre_film_type");
                String pre_film_time= rs.getString("pre_film_time");
                String pre_film_actor=rs.getString("pre_film_actor");
                String pre_film_date=rs.getString("pre_film_date");
                String pre_film_version=rs.getString("pre_film_version");
                String pre_film_info=rs.getString("pre_film_info");

                preFilm prfilm=new preFilm(pre_film_img,pre_film_id,pre_film_name,pre_film_type,pre_film_time,pre_film_actor,pre_film_date,pre_film_version,pre_film_info);
                preFilmList.add(prfilm);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return  preFilmList;
    }

    public List<FilmInfo> findAllFilms(){
        {
            DBUtil.initConnection();//初始化connection对象
            String sql="select * from film";
            DBUtil.initPrepareStatement(sql);
            DBUtil.executeQuery();
            List<FilmInfo> lt=new ArrayList<>();
            ResultSet rs=DBUtil.getRes();
            try {
                while (rs.next()) {
                    String film_img=rs.getString("film_img");
                    String film_id= rs.getString("film_id");
                    String film_name=rs.getString("film_name");
                    String film_type=rs.getString("film_type");
                    String film_time= rs.getString("film_time");
                    String film_actor=rs.getString("film_actor");
                    String film_date=rs.getString("film_date");
                    String film_version=rs.getString("film_version");
                    String film_info=rs.getString("film_info");
                    String film_price= rs.getString("film_price");
                    String film_score= rs.getString("film_score");

                    FilmInfo fi=new FilmInfo();
                    fi.setFilm_img(film_img);
                    fi.setFilm_id(film_id);
                    fi.setFilm_name(film_name);
                    fi.setFilm_type(film_type);
                    fi.setFilm_time(film_time);
                    fi.setFilm_actor(film_actor);
                    fi.setFilm_date(film_date);
                    fi.setFilm_version(film_version);
                    fi.setFilm_info(film_info);
                    fi.setFilm_price(film_price);
                    fi.setFilm_score(film_score);
                    lt.add(fi);
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            DBUtil.close();
            return lt;
        }
    }
}
