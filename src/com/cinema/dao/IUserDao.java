package com.cinema.dao;

import com.cinema.entity.User;

public interface IUserDao {
    User selectByAccount(String account,String password);
    User selectByIdOnly(String account);
    User insertAccount(String account,String password);
    User addInfo(String name,String sex ,String tel,String birth,String state,String hobby,String word,String q1,String a1,String q2,String a2,String id);
}
