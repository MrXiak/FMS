package com.cinema.service.impl;

import com.cinema.dao.IUserDao;
import com.cinema.dao.impl.IUserDaoImpl;
import com.cinema.entity.User;
import com.cinema.service.IUserService;

import javax.servlet.http.HttpSession;

public class IUserServiceImpl implements IUserService {
    @Override
    public boolean isRegister(User user) {
        IUserDao userDao=new IUserDaoImpl();
        User u=userDao.selectByIdOnly(user.getUser_id());
        if (u==null){
            userDao.insertAccount(user.getUser_id(),user.getUser_password());
            return true;
        }else {
            return false;
        }
    }

    @Override
    public boolean isUpdate(User user) {
        IUserDao userDao=new IUserDaoImpl();
        userDao.addInfo(user.getUser_name(),user.getUser_id(),user.getUser_sex(),user.getUser_tel(),user.getUser_birthday(),user.getLife_state(),user.getHobbies(),user.getPersonal_word(),user.getQuestion_one(),user.getAnswer_one(),user.getQuestion_two(),user.getAnswer_two());
        return true;
    }
}
