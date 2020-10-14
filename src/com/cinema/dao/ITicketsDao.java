package com.cinema.dao;

import com.cinema.entity.Ticket;

public interface ITicketsDao {
    Ticket selectByfilmID(String filmid);
}
