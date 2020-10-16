package com.cinema.dao;

import com.cinema.entity.User;

import java.util.List;

public interface IUserDao {
    User selectByAccount(String account,String password);
    User selectByIdOnly(String account);
    User insertAccount(String account,String password);
    User addInfo(String name,String sex ,String tel,String birth,String state,String hobby,String word,String q1,String a1,String q2,String a2,String id);
    User changePassword(String account);
    User canChange(String account,String password);
    List<User> getAll();
}
