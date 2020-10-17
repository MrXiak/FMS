package com.cinema.dao.impl;

import com.cinema.dao.IFilmDao;
import com.cinema.entity.User;
import com.cinema.util.DBUtil;

public class IFilmDaoImpl implements IFilmDao {

    @Override
    public User addFilmInfo(String pre_img, String pre_id, String pre_name, String pre_type, String pre_time, String pre_actor, String pre_date, String pre_version, String pre_info) {
        DBUtil.initConnection();
        String sql="insert into prefilm values (?,?,?,?,?,?,?,?,?)";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(pre_img,pre_id,pre_name,pre_type,pre_time,pre_actor,pre_date,pre_version,pre_info);
        DBUtil.executeUpdate();
        DBUtil.close();
        return null;
    }
}
