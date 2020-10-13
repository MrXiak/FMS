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
    @Override
    public User insertAccount(String account, String password) {
        DBUtil.initConnection();
        String sql="insert into user (user_id,user_password) values (?,?)";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(account,password);
        DBUtil.executeUpdate();
        DBUtil.close();
        return null;
    }

    @Override
    public User addInfo(String name,String sex, String tel, String birth, String state,String hobby,String word,String id) {
        DBUtil.initConnection();
        String sql="update user set user_name=?,user_sex=?,user_tel=?,user_birthday=?,life_state=?,hobbies=?,personal_word=? where user_id=?";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(name,id,sex,tel,birth,state,hobby,word);
        DBUtil.executeUpdate();
        DBUtil.close();
        return null;
    }
}
