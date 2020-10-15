package com.cinema.dao.impl;

import com.cinema.dao.ITicketsDao;
import com.cinema.entity.Ticket;
import com.cinema.util.DBUtil;
import sun.security.pkcs11.Secmod;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ITicketsDaoImpl implements ITicketsDao {
    @Override
    public Ticket selectByfilmID(String filmid) {
        DBUtil.initConnection();
        String sql = "select * from film where film_id=?";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(filmid);
        DBUtil.executeQuery();
        ResultSet rs = DBUtil.getRes();
        try {
            if (rs.next()) {
                String film_img = rs.getString("film_img");
                String film_id = rs.getString("film_id");
                String film_name = rs.getString("film_name");
                String film_type = rs.getString("film_type");
                String film_time = rs.getString("film_time");
                String film_actor = rs.getString("film_actor");
                String film_date = rs.getString("film_date");
                String film_version = rs.getString("film_version");
                String film_info = rs.getString("film_info");
                String film_price = rs.getString("film_price");
                String film_score = rs.getString("film_score");

                Ticket ticket = new Ticket();
                ticket.setFilm_img(film_img);
                ticket.setFilm_id(film_id);
                ticket.setFilm_name(film_name);
                ticket.setFilm_type(film_type);
                ticket.setFilm_time(film_time);
                ticket.setFilm_actor(film_actor);
                ticket.setFilm_date(film_date);
                ticket.setFilm_version(film_version);
                ticket.setFilm_info(film_info);
                ticket.setFilm_price(film_price);
                ticket.setFilm_score(film_score);
                return ticket;
            }
            return null;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        DBUtil.close();
        return null;
    }
}
