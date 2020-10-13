package com.cinema.service;

import com.cinema.entity.User;

public interface IUserService {
    boolean isLogin(User user);
    boolean isRegister(User user);
    boolean isUpdate(User user);
}
