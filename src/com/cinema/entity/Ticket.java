package com.cinema.entity;

public class Ticket {
    private String film_img;
    private String film_id;
    private String film_name;
    private String film_type;
    private String film_time;
    private String film_actor;
    private String film_date;
    private String film_version;
    private String film_info;
    private String film_price;
    private String film_score;

    public String getFilm_version() {
        return film_version;
    }

    public void setFilm_version(String film_version) {
        this.film_version = film_version;
    }

    public String getFilm_img() {
        return film_img;
    }

    public void setFilm_img(String film_img) {
        this.film_img = film_img;
    }

    public String getFilm_id() {
        return film_id;
    }

    public void setFilm_id(String film_id) {
        this.film_id = film_id;
    }

    public String getFilm_name() {
        return film_name;
    }

    public void setFilm_name(String film_name) {
        this.film_name = film_name;
    }

    public String getFilm_type() {
        return film_type;
    }

    public void setFilm_type(String film_type) {
        this.film_type = film_type;
    }

    public String getFilm_time() {
        return film_time;
    }

    public void setFilm_time(String film_time) {
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

    public String getFilm_price() {
        return film_price;
    }

    public void setFilm_price(String film_price) {
        this.film_price = film_price;
    }

    public String getFilm_score() {
        return film_score;
    }

    public void setFilm_score(String film_score) {
        this.film_score = film_score;
    }

    @Override
    public String toString() {
        return "Ticket{" +
                "film_img='" + film_img + '\'' +
                ", film_id='" + film_id + '\'' +
                ", film_name='" + film_name + '\'' +
                ", film_type='" + film_type + '\'' +
                ", film_time='" + film_time + '\'' +
                ", film_actor='" + film_actor + '\'' +
                ", film_date='" + film_date + '\'' +
                ", film_version='" + film_version + '\'' +
                ", film_info='" + film_info + '\'' +
                ", film_price='" + film_price + '\'' +
                ", film_score='" + film_score + '\'' +
                '}';
    }
}
