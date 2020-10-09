package com.cinema.service.impl;

import com.cinema.dao.IUserDao;
import com.cinema.dao.impl.IUserDaoImpl;
import com.cinema.entity.User;
import com.cinema.service.IUserService;

public class IUserServiceImpl implements IUserService {
    @Override
    public boolean isLogin(User user) {
        IUserDao userDao=new IUserDaoImpl();
        User u=userDao.selectByAccount(user.getUser_id());
        if (u==null){
            return false;
        }else {
            if (user.getUser_password().equals(u.getUser_password())){
               return true;
            }
            return false;
        }
    }
}
