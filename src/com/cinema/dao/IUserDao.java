package com.cinema.dao;

import com.cinema.entity.User;

public interface IUserDao {
    User selectByAccount(String account);
    User insertAccount(String account,String password);
    User addInfo(String name,String sex ,String tel,String birth,String state,String hobby,String word,String id);
}
