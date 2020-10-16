package com.cinema.dao.impl;

import com.cinema.dao.IUserDao;
import com.cinema.entity.User;
import com.cinema.util.DBUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class  IUserDaoImpl implements IUserDao {
    @Override
    public User selectByAccount(String account,String password) {
        DBUtil.initConnection();//初始化connection对象
        String sql="select * from user where user_id=? and user_password=?";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(account,password);
        DBUtil.executeQuery();
        ResultSet rs=DBUtil.getRes();
        try {
            if(rs.next()) {
                String username=rs.getString("user_name");
                String userid = rs.getString("user_id");
                String userpassword = rs.getString("user_password");
                String usersex=rs.getString("user_sex");
                String usertel=rs.getString("user_tel");
                String userbirthday=rs.getString("user_birthday");
                String lifestate=rs.getString("life_state");
                String hobby=rs.getString("hobbies");
                String word=rs.getString("personal_word");
                String q1=rs.getString("question_one");
                String a1=rs.getString("answer_one");
                String q2=rs.getString("question_two");
                String a2=rs.getString("answer_two");

                User user=new User();
                user.setUser_name(username);
                user.setUser_id(userid);
                user.setUser_password(userpassword);
                user.setUser_sex(usersex);
                user.setUser_tel(usertel);
                user.setUser_birthday(userbirthday);
                user.setLife_state(lifestate);
                user.setHobbies(hobby);
                user.setPersonal_word(word);
                user.setQuestion_one(q1);
                user.setAnswer_one(a1);
                user.setQuestion_two(q2);
                user.setAnswer_two(a2);
                return user;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        DBUtil.close();
        return null;
    }

    @Override
    public User selectByIdOnly(String account) {
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
                String a1=rs.getString("answer_one");
                String a2=rs.getString("answer_two");
                User user=new User();
                user.setUser_id(userid);
                user.setUser_password(userpassword);
                user.setAnswer_one(a1);
                user.setAnswer_two(a2);
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
    public User addInfo(String name,String id,String sex, String tel, String birth, String state,String hobby,String word,String q1,String a1,String q2,String a2) {
        DBUtil.initConnection();
        String sql="update user set user_name=?,user_id=?,user_sex=?,user_tel=?,user_birthday=?,life_state=?,hobbies=?,personal_word=?,question_one=?,answer_one=?,question_two=?,answer_two=? where user_id=?";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(name,id,sex,tel,birth,state,hobby,word,q1,a1,q2,a2,id);
        DBUtil.executeUpdate();
        DBUtil.close();
        return null;
    }

    @Override
    public User changePassword(String account) {
        DBUtil.initConnection();//初始化connection对象
        String sql="select * from user where user_id=?";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(account);
        DBUtil.executeQuery();
        ResultSet rs=DBUtil.getRes();
        try {
            if(rs.next()) {
                String username=rs.getString("user_name");
                String userid = rs.getString("user_id");
                String userpassword = rs.getString("user_password");
                String usersex=rs.getString("user_sex");
                String usertel=rs.getString("user_tel");
                String userbirthday=rs.getString("user_birthday");
                String lifestate=rs.getString("life_state");
                String hobby=rs.getString("hobbies");
                String word=rs.getString("personal_word");
                String q1=rs.getString("question_one");
                String a1=rs.getString("answer_one");
                String q2=rs.getString("question_two");
                String a2=rs.getString("answer_two");

                User user=new User();
                user.setUser_name(username);
                user.setUser_id(userid);
                user.setUser_password(userpassword);
                user.setUser_sex(usersex);
                user.setUser_tel(usertel);
                user.setUser_birthday(userbirthday);
                user.setLife_state(lifestate);
                user.setHobbies(hobby);
                user.setPersonal_word(word);
                user.setQuestion_one(q1);
                user.setAnswer_one(a1);
                user.setQuestion_two(q2);
                user.setAnswer_two(a2);
                return user;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        DBUtil.close();
        return null;
    }

    @Override
    public User canChange(String account,String password) {
        DBUtil.initConnection();
        String sql="update user set user_password=? where user_id=?";
        DBUtil.initPrepareStatement(sql);
        DBUtil.setPar(password,account);
        DBUtil.executeUpdate();
        DBUtil.close();
        return null;
    }

    @Override
    public List<User> getAll() {
        DBUtil.initConnection();//初始化connection对象
        String sql="select * from user";
        DBUtil.initPrepareStatement(sql);
        DBUtil.executeQuery();
        List<User> list=new ArrayList<>();
        ResultSet rs=DBUtil.getRes();
        try {
            while (rs.next()) {
                String username=rs.getString("user_name");
                String userid = rs.getString("user_id");
                String userpassword = rs.getString("user_password");
                String usersex=rs.getString("user_sex");
                String usertel=rs.getString("user_tel");
                String userbirthday=rs.getString("user_birthday");
                String lifestate=rs.getString("life_state");
                String hobby=rs.getString("hobbies");
                String word=rs.getString("personal_word");
                String q1=rs.getString("question_one");
                String a1=rs.getString("answer_one");
                String q2=rs.getString("question_two");
                String a2=rs.getString("answer_two");

                User user=new User();
                user.setUser_name(username);
                user.setUser_id(userid);
                user.setUser_password(userpassword);
                user.setUser_sex(usersex);
                user.setUser_tel(usertel);
                user.setUser_birthday(userbirthday);
                user.setLife_state(lifestate);
                user.setHobbies(hobby);
                user.setPersonal_word(word);
                user.setQuestion_one(q1);
                user.setAnswer_one(a1);
                user.setQuestion_two(q2);
                user.setAnswer_two(a2);
                list.add(user);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        DBUtil.close();
        return list;
    }
}
