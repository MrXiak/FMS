package com.cinema.dao;

import com.cinema.entity.User;

public interface IUserDao {
    User selectByAccount(String account);
}
