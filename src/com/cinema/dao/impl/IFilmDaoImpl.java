package com.cinema.dao.impl;

import com.cinema.dao.IFilmDao;
import com.cinema.entity.FilmInfo;
import com.cinema.entity.User;
import com.cinema.entity.preFilm;
import com.cinema.util.DBUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class IFilmDaoImpl implements IFilmDao {

    @Override
    public FilmInfo addFilmInfo(String pre_img, String pre_id, String pre_name, String pre_type, String pre_time, String pre_actor, String pre_date, String pre_version, String pre_info) {
        DBUtil.initConnection();
        String sql="insert into prefilm values (?,?,?,?,?,?,?,?,?)";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(pre_img,pre_id,pre_name,pre_type,pre_time,pre_actor,pre_date,pre_version,pre_info);
        DBUtil.executeUpdate();
        DBUtil.close();
        return null;
    }

    @Override
    public List<preFilm> findAllPreFilm() {
        DBUtil.initConnection();//初始化connection对象
        String sql="select * from prefilm";
        DBUtil.initPrepareStatement(sql);
        DBUtil.executeQuery();
        List<preFilm> plist=new ArrayList<>();
        ResultSet rs=DBUtil.getRes();
        try {
            while (rs.next()) {
                String pimg=rs.getString("pre_film_img");
                String pid = rs.getString("pre_film_id");
                String pname = rs.getString("pre_film_name");
                String ptype=rs.getString("pre_film_type");
                String ptime=rs.getString("pre_film_time");
                String pactor=rs.getString("pre_film_actor");
                String pdate=rs.getString("pre_film_date");
                String pversion=rs.getString("pre_film_version");
                String pinfo=rs.getString("pre_film_info");

                preFilm pFilm=new preFilm();
                pFilm.setPre_film_img(pimg);
                pFilm.setPre_film_id(pid);
                pFilm.setPre_film_name(pname);
                pFilm.setPre_film_type(ptype);
                pFilm.setPre_film_time(ptime);
                pFilm.setPre_film_actor(pactor);
                pFilm.setPre_film_date(pdate);
                pFilm.setPre_film_version(pversion);
                pFilm.setPre_film_info(pinfo);
                plist.add(pFilm);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        DBUtil.close();
        return plist;
    }

    @Override
    public FilmInfo del_Film(String fid) {
        DBUtil.initConnection();
        String sql="delete from film where film_id=?";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(fid);
        DBUtil.executeUpdate();
        DBUtil.close();
        return null;
    }

    @Override
    public FilmInfo update_FIlm(String film_img,String film_id,String film_name,String film_type,String film_time,String film_actor,String film_date,String film_version,String film_info,String film_price,String film_score) {
        DBUtil.initConnection();
        String sql="update film set film_img=?,film_id=?,film_name=?,film_type=?,film_time=?,film_actor=?,film_date=?,film_version=?,film_info=?,film_price=?,film_score=? where film_id=?";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(film_img,film_id,film_name,film_type,film_time,film_actor,film_date,film_version,film_info,film_price,film_score,film_id);
        DBUtil.executeUpdate();
        DBUtil.close();
        return null;
    }

    @Override
    public FilmInfo find_It(String film_id) {
        DBUtil.initConnection();
        String sql="select * from film where film_id=?";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(film_id);
        DBUtil.executeQuery();
        ResultSet rs=DBUtil.getRes();
        try {
            if (rs.next()){
                String fimage=rs.getString("film_img");
                String fid= rs.getString("film_id");
                String fname = rs.getString("film_name");
                String ftype=rs.getString("film_type");
                String ftime=rs.getString("film_time");
                String factor=rs.getString("film_actor");
                String fdate=rs.getString("film_date");
                String fversion=rs.getString("film_version");
                String finfo=rs.getString("film_info");
                String fprice= rs.getString("film_price");
                String fscore=rs.getString("film_score");

                FilmInfo filmInfo=new FilmInfo();
                filmInfo.setFilm_img(fimage);
                filmInfo.setFilm_id(fid);
                filmInfo.setFilm_name(fname);
                filmInfo.setFilm_type(ftype);
                filmInfo.setFilm_time(ftime);
                filmInfo.setFilm_actor(factor);
                filmInfo.setFilm_date(fdate);
                filmInfo.setFilm_version(fversion);
                filmInfo.setFilm_info(finfo);
                filmInfo.setFilm_price(fprice);
                filmInfo.setFilm_score(fscore);
                return filmInfo;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        DBUtil.close();
        return null;
    }

    @Override
    public preFilm del_PreFilm(String pid) {
        DBUtil.initConnection();
        String sql="delete from prefilm where pre_film_id=?";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(pid);
        DBUtil.executeUpdate();
        DBUtil.close();
        return null;
    }

    @Override
    public preFilm find_prefilm(String pid) {
        DBUtil.initConnection();
        String sql="select * from prefilm where pre_film_id=?";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(pid);
        DBUtil.executeQuery();
        ResultSet rs=DBUtil.getRes();
        try {
            if (rs.next()){
                String pimg=rs.getString("pre_film_img");
                String pfid= rs.getString("pre_film_id");
                String pname = rs.getString("pre_film_name");
                String ptype=rs.getString("pre_film_type");
                String ptime=rs.getString("pre_film_time");
                String pactor=rs.getString("pre_film_actor");
                String pdate=rs.getString("pre_film_date");
                String pversion=rs.getString("pre_film_version");
                String pinfo=rs.getString("pre_film_info");

                preFilm pFilm=new preFilm();
                pFilm.setPre_film_img(pimg);
                pFilm.setPre_film_id(pfid);
                pFilm.setPre_film_name(pname);
                pFilm.setPre_film_type(ptype);
                pFilm.setPre_film_time(ptime);
                pFilm.setPre_film_actor(pactor);
                pFilm.setPre_film_date(pdate);
                pFilm.setPre_film_version(pversion);
                pFilm.setPre_film_info(pinfo);
                return pFilm;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        DBUtil.close();
        return null;
    }
}
