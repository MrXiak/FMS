package com.cinema.entity;

import java.util.Date;

public class OrderInfo {
    private long order_id;
    private String film_name;
    private String session_time;
    private String cinema_name;
    private String seat;
    private String sum_price;
    private String pay_state;

    public long getOrder_id() {
        return order_id;
    }

    public void setOrder_id(long order_id) {
        this.order_id = order_id;
    }

    public String getFilm_name() {
        return film_name;
    }

    public void setFilm_name(String film_name) {
        this.film_name = film_name;
    }

    public String getSession_time() {
        return session_time;
    }

    public void setSession_time(String session_time) {
        this.session_time = session_time;
    }

    public String getCinema_name() {
        return cinema_name;
    }

    public void setCinema_name(String cinema_name) {
        this.cinema_name = cinema_name;
    }

    public String getSeat() {
        return seat;
    }

    public void setSeat(String seat) {
        this.seat = seat;
    }

    public String getSum_price() {
        return sum_price;
    }

    public void setSum_price(String sum_price) {
        this.sum_price = sum_price;
    }

    public String getPay_state() {
        return pay_state;
    }

    public void setPay_state(String pay_state) {
        this.pay_state = pay_state;
    }


//    @Override
//    public String toString() {
//        return "OrderInfo{" +
//                "order_id=" + order_id +
//                ", film_name='" + film_name + '\'' +
//                ", session_time='" + session_time + '\'' +
//                ", cinema_name='" + cinema_name + '\'' +
//                ", seat='" + seat + '\'' +
//                ", sum_price='" + sum_price + '\'' +
//                ", pay_state='" + pay_state + '\'' +
//                ", duetime=" + duetime +
//                '}';
//    }



    @Override
    public String toString() {
        return "OrderInfo{" +
                "order_id=" + order_id +
                ", film_name='" + film_name + '\'' +
                ", session_time='" + session_time + '\'' +
                ", cinema_name='" + cinema_name + '\'' +
                ", seat='" + seat + '\'' +
                ", sum_price='" + sum_price + '\'' +
                ", pay_state='" + pay_state + '\'' +
                '}';
    }
}
