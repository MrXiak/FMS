package com.cinema.dao;

import com.cinema.entity.User;

public interface IFilmDao {
    User addFilmInfo(String pre_img, String pre_id , String pre_name, String pre_type, String pre_time, String pre_actor, String pre_date, String pre_version, String pre_info);
}
