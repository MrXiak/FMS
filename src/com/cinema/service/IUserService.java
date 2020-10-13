package com.cinema.service;

import com.cinema.entity.User;

public interface IUserService {
    boolean isRegister(User user);
    boolean isUpdate(User user);
}
