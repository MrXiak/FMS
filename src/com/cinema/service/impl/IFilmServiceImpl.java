package com.cinema.service.impl;

import com.cinema.dao.IFilmDao;
import com.cinema.dao.impl.IFilmDaoImpl;
import com.cinema.entity.FilmInfo;
import com.cinema.entity.preFilm;
import com.cinema.service.IFilmService;

public class IFilmServiceImpl implements IFilmService {
    @Override
    public boolean isInsert(preFilm pre) {
        IFilmDao iFilmDao = new IFilmDaoImpl();
        iFilmDao.addFilmInfo(pre.getPre_film_img(), pre.getPre_film_id(), pre.getPre_film_name(), pre.getPre_film_type(), pre.getPre_film_time(), pre.getPre_film_actor(), pre.getPre_film_date(), pre.getPre_film_version(), pre.getPre_film_info());
        return true;
    }

    @Override
    public boolean isUpdateFilmInfo(FilmInfo filmInfo) {
        IFilmDao iFilmDao=new IFilmDaoImpl();
        iFilmDao.update_FIlm(filmInfo.getFilm_img(),filmInfo.getFilm_id(),filmInfo.getFilm_name(),filmInfo.getFilm_type(),filmInfo.getFilm_time(),filmInfo.getFilm_actor(),filmInfo.getFilm_date(),filmInfo.getFilm_version(),filmInfo.getFilm_info(),filmInfo.getFilm_price(),filmInfo.getFilm_score());
        return true;
    }
}
