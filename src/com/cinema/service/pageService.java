package com.cinema.service;

import com.cinema.entity.FilmInfo;
import com.cinema.util.DBUtil;
import com.cinema.util.pageUtils;
import com.mysql.cj.protocol.Resultset;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class pageService {
    public pageUtils getFilms(int currentPage){
        Connection conn=null;
        Statement st=null;
        ResultSet rs=null;
        List<FilmInfo> filmInfoList=new ArrayList<FilmInfo>();
        int totalPageSize=0;
        int pageSize=6;//默认每页显示10条记录

        try{
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/fms?serverTimezone=GMT%2B8&useSSL=false", "root",  "111");
            st=conn.createStatement();
            rs=st.executeQuery("select count(film_id)totalNum from film");
            if (rs.next()){
                totalPageSize=rs.getInt("totalNum");
            }

            rs=st.executeQuery("select * from film limit"+(currentPage-1)*pageSize+","+pageSize);
            while(rs.next()){
                filmInfoList.add(new FilmInfo(rs.getString(1),
                                              rs.getInt(2),
                                              rs.getString(3),
                                              rs.getInt(4),
                                              rs.getString(5),
                                              rs.getString(6),
                                              rs.getString(7),
                                              rs.getDouble(8),
                                              rs.getDouble(9)));
                System.out.println(rs.getObject(1) + "\t"
                                 + rs.getObject(2) + "\t"
                                 + rs.getObject(3) + "\t"
                                 + rs.getObject(4) + "\t"
                                 + rs.getObject(5) + "\t"
                                 + rs.getObject(6) + "\t"
                                 + rs.getObject(7) + "\t"
                                 + rs.getObject(8) + "\t"
                                 + rs.getObject(9) + "\t"
                );
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        pageUtils page=new pageUtils(filmInfoList,currentPage,pageSize,totalPageSize);

        return page;
    }
}
