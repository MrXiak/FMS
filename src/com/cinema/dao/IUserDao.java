package com.cinema.dao;

import com.cinema.entity.User;

public interface IUserDao {
    User selectByAccount(String account);
    User insertAccount(String account,String password);
    boolean isExist(String account);
}
