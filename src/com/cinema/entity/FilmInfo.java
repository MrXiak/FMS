package com.cinema.entity;

import com.cinema.util.DBUtil;

public class FilmInfo {
    private String film_img;  //图片
    private Integer film_id;   //id
    private String film_name;   //电影名
    private String film_type;   //类型
    private Integer film_time;  //电影时长
    private String film_actor;  //电影导演
    private String film_date;   //上映日期
    private String film_version;//电影版本
    private String film_info;   //详情
    private Double film_price;  //票价
    private Double film_score;  //评分

    public FilmInfo(){

    }

    public FilmInfo(String film_img, Integer film_id, String film_name, Integer film_time, String film_actor, String film_date, String film_info, Double film_price, Double film_score) {
        this.film_img = film_img;
        this.film_id = film_id;
        this.film_name = film_name;
        this.film_time = film_time;
        this.film_actor = film_actor;
        this.film_date = film_date;
        this.film_info = film_info;
        this.film_price = film_price;
        this.film_score = film_score;
    }
    public FilmInfo(String film_img, Integer film_id, String film_name, String film_type, Integer film_time, String film_actor, String film_date, String film_version, String film_info, Double film_price, Double film_score) {
        this.film_img = film_img;
        this.film_id = film_id;
        this.film_name = film_name;
        this.film_type = film_type;
        this.film_time = film_time;
        this.film_actor = film_actor;
        this.film_date = film_date;
        this.film_version = film_version;
        this.film_info = film_info;
        this.film_price = film_price;
        this.film_score = film_score;
    }

    public String getFilm_img() {
        return film_img;
    }

    public void setFilm_img(String film_img) {
        this.film_img = film_img;
    }

    public Integer getFilm_id() {
        return film_id;
    }

    public void setFilm_id(Integer film_id) {
        this.film_id = film_id;
    }

    public String getFilm_name() {
        return film_name;
    }

    public void setFilm_name(String film_name) {
        this.film_name = film_name;
    }

    public Integer getFilm_time() {
        return film_time;
    }

    public void setFilm_time(Integer film_time) {
        this.film_time = film_time;
    }

    public String getFilm_actor() {
        return film_actor;
    }

    public void setFilm_actor(String film_actor) {
        this.film_actor = film_actor;
    }

    public String getFilm_date() {
        return film_date;
    }

    public void setFilm_date(String film_date) {
        this.film_date = film_date;
    }

    public String getFilm_info() {
        return film_info;
    }

    public void setFilm_info(String film_info) {
        this.film_info = film_info;
    }

    public Double getFilm_price() {
        return film_price;
    }

    public void setFilm_price(Double film_price) {
        this.film_price = film_price;
    }

    public Double getFilm_score() {
        return film_score;
    }

    public void setFilm_score(Double film_score) {
        this.film_score = film_score;
    }

    public String getFilm_type() {
        return film_type;
    }

    public void setFilm_type(String film_type) {
        this.film_type = film_type;
    }

    public String getFilm_version() {
        return film_version;
    }

    public void setFilm_version(String film_version) {
        this.film_version = film_version;
    }

    @Override
    public String toString() {
        return "FilmInfo{" +
                "film_img='" + film_img + '\'' +
                ", film_id=" + film_id +
                ", film_name='" + film_name + '\'' +
                ", film_type='" + film_type + '\'' +
                ", film_time=" + film_time +
                ", film_actor='" + film_actor + '\'' +
                ", film_date='" + film_date + '\'' +
                ", film_version='" + film_version + '\'' +
                ", film_info='" + film_info + '\'' +
                ", film_price=" + film_price +
                ", film_score=" + film_score +
                '}';
    }
}
