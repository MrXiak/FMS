package com.cinema.dao.impl;

import com.cinema.dao.IAdminDao;
import com.cinema.entity.AdminInfo;
import com.cinema.entity.User;
import com.cinema.util.DBUtil;

import java.sql.ResultSet;
import java.sql.SQLException;

public class IAdminDaoImpl implements IAdminDao {

    @Override
    public AdminInfo selectByAlAccount(String account, String password) {
        DBUtil.initConnection();//初始化connection对象
        String sql="select * from admn where admin_id=? and admin_password=?";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(account,password);
        DBUtil.executeQuery();
        ResultSet rs=DBUtil.getRes();
        try {
            if(rs.next()) {
                String userid = rs.getString("admin_id");
                String userpassword = rs.getString("admin_password");
                AdminInfo adminInfo=new AdminInfo();
                adminInfo.setAdmin_id(userid);
                adminInfo.setAdmin_password(userpassword);
                return adminInfo;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        DBUtil.close();
        return null;
    }

    @Override
    public AdminInfo selectByAlIdOnly(String account) {
        DBUtil.initConnection();//初始化connection对象
        String sql="select * from admin where admin_id=?";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(account);
        DBUtil.executeQuery();
        ResultSet rs=DBUtil.getRes();
        try {
            if(rs.next()) {
                String userid = rs.getString("user_id");
                String userpassword = rs.getString("user_password");
                AdminInfo adminInfo=new AdminInfo();
                adminInfo.setAdmin_id(userid);
                adminInfo.setAdmin_password(userpassword);
                return adminInfo;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        DBUtil.close();
        return null;
    }

    @Override
    public AdminInfo insertAlAccount(String account, String password) {
        DBUtil.initConnection();
        String sql="insert into admin (user_id,user_password) values (?,?)";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(account,password);
        DBUtil.executeUpdate();
        DBUtil.close();
        return null;
    }
}
