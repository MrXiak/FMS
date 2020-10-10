package com.cinema.dao.impl;

import com.cinema.dao.IUserDao;
import com.cinema.entity.User;
import com.cinema.util.DBUtil;

import java.sql.PreparedStatement;
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
                String userid = rs.getString("user_id");
                String userpassword = rs.getString("user_password");
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

//    @Override
//    public boolean isExist(String account) {
//        DBUtil.initConnection();
//        PreparedStatement ps = null;
//        // 查询账号是否已经存在
//        String sql = "select * from user where user_id=?";
//        DBUtil.initPrepareStatement(sql);
//        DBUtil.setPar(account);
//        DBUtil.executeQuery();
//        ResultSet rs=DBUtil.getRes();
//        try {
//            if(rs.next()) {
//                return true;
//            }
//        } catch (SQLException throwables) {
//            throwables.printStackTrace();
//        }finally {
//            DBUtil.close();
//        }
//        return false;
//    }

    @Override
    public User insertAccount(String account, String password) {
        DBUtil.initConnection();
        String sql="insert into user(user_id,user_password) values(?,?)";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(account);
        DBUtil.setPar(password);
        DBUtil.executeQuery();
        return null;
    }
}
