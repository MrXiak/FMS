package com.cinema.entity;

public class Cinema {
    private Integer cinema_id;
    private String cinema_name;
    private Integer area_id;

    public Cinema(){

    }

    public Cinema(Integer cinema_id, String cinema_name, Integer area_id) {
        this.cinema_id = cinema_id;
        this.cinema_name = cinema_name;
        this.area_id = area_id;
    }

    @Override
    public String toString() {
        return "Cinema{" +
                "cinema_id=" + cinema_id +
                ", cinema_name='" + cinema_name + '\'' +
                ", film_id='" + area_id + '\'' +
                '}';
    }

    public Integer getCinema_id() {
        return cinema_id;
    }

    public void setCinema_id(Integer cinema_id) {
        this.cinema_id = cinema_id;
    }

    public String getCinema_name() {
        return cinema_name;
    }

    public void setCinema_name(String cinema_name) {
        this.cinema_name = cinema_name;
    }

    public Integer getArea_id() {
        return area_id;
    }

    public void setArea_id(Integer area_id) {
        this.area_id = area_id;
    }
}
