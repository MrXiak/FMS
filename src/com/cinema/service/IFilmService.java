package com.cinema.service;

import com.cinema.entity.FilmInfo;
import com.cinema.entity.preFilm;

public interface IFilmService {
    boolean isInsert(preFilm pre);
    boolean isUpdateFilmInfo(FilmInfo filmInfo);
}
