package com.cinema.dao;

import com.cinema.entity.AdminInfo;
import com.cinema.entity.User;

public interface IAdminDao {
    AdminInfo selectByAlAccount(String account, String password);
    AdminInfo selectByAlIdOnly(String account);
    AdminInfo insertAlAccount(String account,String password);
}
