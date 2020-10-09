package com.cinema.dao.impl;

import com.cinema.dao.IUserDao;
import com.cinema.entity.User;
import com.cinema.util.DBUtil;

import java.sql.ResultSet;
import java.sql.SQLException;

public class  IUserDaoImpl implements IUserDao {
    @Override
    public User selectByAccount(String account) {
        DBUtil.initConnection();//初始化connection对象
        String sql="select * from user where user_id=?";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(account);
        DBUtil.executeQuery();
        ResultSet rs=DBUtil.getRes();
        try {
            if(rs.next()) {
                String userid = rs.getString("account");
                String userpassword = rs.getString("password");
                User user=new User();
                user.setUser_id(userid);
                user.setUser_password(userpassword);
                return user;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        DBUtil.close();
        return null;
    }
}
