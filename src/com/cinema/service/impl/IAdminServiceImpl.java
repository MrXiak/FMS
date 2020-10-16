package com.cinema.service.impl;

import com.cinema.dao.IAdminDao;
import com.cinema.dao.IUserDao;
import com.cinema.dao.impl.IAdminDaoImpl;
import com.cinema.dao.impl.IUserDaoImpl;
import com.cinema.entity.AdminInfo;
import com.cinema.entity.User;
import com.cinema.service.IAdminService;

public class IAdminServiceImpl implements IAdminService {
    @Override
    public boolean isAlRegister(AdminInfo adminInfo) {
        IAdminDao adminDao=new IAdminDaoImpl();
        AdminInfo a=adminDao.selectByAlIdOnly(adminInfo.getAdmin_id());
        if (a==null){
            adminDao.insertAlAccount(adminInfo.getAdmin_id(),adminInfo.getAdmin_password());
            return true;
        }else {
            return false;
        }
    }
}
