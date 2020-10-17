package com.cinema.dao;

import com.cinema.entity.FilmInfo;
import com.cinema.entity.preFilm;

import java.util.List;

public interface IFilmDao {
    FilmInfo addFilmInfo(String pre_img, String pre_id , String pre_name, String pre_type, String pre_time, String pre_actor, String pre_date, String pre_version, String pre_info);
    List<preFilm> findAllPreFilm();
    FilmInfo del_Film(String fid);
    FilmInfo update_FIlm(String film_img,String film_id,String film_name,String film_type,String film_time,String film_actor,String film_date,String film_version,String film_info,String film_price,String film_score);
    FilmInfo find_It(String film_id);
}
