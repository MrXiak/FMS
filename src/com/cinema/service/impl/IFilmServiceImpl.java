package com.cinema.service.impl;

import com.cinema.dao.IFilmDao;
import com.cinema.dao.impl.IFilmDaoImpl;
import com.cinema.entity.preFilm;
import com.cinema.service.IFilmService;

public class IFilmServiceImpl implements IFilmService {
    @Override
    public boolean isInsert(preFilm pre) {
        IFilmDao iFilmDao = new IFilmDaoImpl();
        iFilmDao.addFilmInfo(pre.getPre_film_img(), pre.getPre_film_id(), pre.getPre_film_name(), pre.getPre_film_type(), pre.getPre_film_time(), pre.getPre_film_actor(), pre.getPre_film_date(), pre.getPre_film_version(), pre.getPre_film_info());
        return true;
    }
}
