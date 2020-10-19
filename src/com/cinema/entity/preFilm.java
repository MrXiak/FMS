package com.cinema.entity;

public class preFilm {
    private String pre_film_img;
    private String pre_film_id;
    private String pre_film_name;
    private String pre_film_type;
    private String pre_film_time;
    private String pre_film_actor;
    private String pre_film_date;
    private String pre_film_version;
    private String pre_film_info;

    public preFilm(){

    }

    public preFilm(String pre_film_img, String pre_film_id, String pre_film_name, String pre_film_type, String pre_film_time, String pre_film_actor, String pre_film_date, String pre_film_version, String pre_film_info) {
        this.pre_film_img = pre_film_img;
        this.pre_film_id = pre_film_id;
        this.pre_film_name = pre_film_name;
        this.pre_film_type = pre_film_type;
        this.pre_film_time = pre_film_time;
        this.pre_film_actor = pre_film_actor;
        this.pre_film_date = pre_film_date;
        this.pre_film_version = pre_film_version;
        this.pre_film_info = pre_film_info;
    }

    public String getPre_film_img() {
        return pre_film_img;
    }

    public void setPre_film_img(String pre_film_img) {
        this.pre_film_img = pre_film_img;
    }

    public String getPre_film_id() {
        return pre_film_id;
    }

    public void setPre_film_id(String pre_film_id) {
        this.pre_film_id = pre_film_id;
    }

    public String getPre_film_name() {
        return pre_film_name;
    }

    public void setPre_film_name(String pre_film_name) {
        this.pre_film_name = pre_film_name;
    }

    public String getPre_film_type() {
        return pre_film_type;
    }

    public void setPre_film_type(String pre_film_type) {
        this.pre_film_type = pre_film_type;
    }

    public String getPre_film_time() {
        return pre_film_time;
    }

    public void setPre_film_time(String pre_film_time) {
        this.pre_film_time = pre_film_time;
    }

    public String getPre_film_actor() {
        return pre_film_actor;
    }

    public void setPre_film_actor(String pre_film_actor) {
        this.pre_film_actor = pre_film_actor;
    }

    public String getPre_film_date() {
        return pre_film_date;
    }

    public void setPre_film_date(String pre_film_date) {
        this.pre_film_date = pre_film_date;
    }

    public String getPre_film_version() {
        return pre_film_version;
    }

    public void setPre_film_version(String pre_film_version) {
        this.pre_film_version = pre_film_version;
    }

    public String getPre_film_info() {
        return pre_film_info;
    }

    public void setPre_film_info(String pre_film_info) {
        this.pre_film_info = pre_film_info;
    }

    @Override
    public String toString() {
        return "preFilm{" +
                "pre_film_img='" + pre_film_img + '\'' +
                ", pre_film_id='" + pre_film_id + '\'' +
                ", pre_film_name='" + pre_film_name + '\'' +
                ", pre_film_type='" + pre_film_type + '\'' +
                ", pre_film_time='" + pre_film_time + '\'' +
                ", pre_film_actor='" + pre_film_actor + '\'' +
                ", pre_film_date='" + pre_film_date + '\'' +
                ", pre_film_version='" + pre_film_version + '\'' +
                ", pre_film_info='" + pre_film_info + '\'' +
                '}';
    }
}

