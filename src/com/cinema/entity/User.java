package com.cinema.entity;

public class User {
    private String user_id;
    private String user_password;
    private String user_name;
    private String user_sex;
    private String user_location;
    private String user_tel;

    public String getUser_id() {
        return user_id;
    }

    public String getUser_password() {
        return user_password;
    }

    public String getUser_name() {
        return user_name;
    }

    public String getUser_sex() {
        return user_sex;
    }

    public String getUser_location() {
        return user_location;
    }

    public String getUser_tel() {
        return user_tel;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public void setUser_sex(String user_sex) {
        this.user_sex = user_sex;
    }

    public void setUser_location(String user_location) {
        this.user_location = user_location;
    }

    public void setUser_tel(String user_tel) {
        this.user_tel = user_tel;
    }

    @Override
    public String toString() {
        return "User{" +
                "user_id='" + user_id + '\'' +
                ", user_password='" + user_password + '\'' +
                ", user_name='" + user_name + '\'' +
                ", user_sex='" + user_sex + '\'' +
                ", user_location='" + user_location + '\'' +
                ", user_tel='" + user_tel + '\'' +
                '}';
    }
//
//    public User(String user_id, String user_password) {
//        this.user_id = user_id;
//        this.user_password = user_password;
//    }
//
//    public User(String user_id, String user_password, String user_name, String user_sex, String user_location, String user_tel) {
//        this.user_id = user_id;
//        this.user_password = user_password;
//        this.user_name = user_name;
//        this.user_sex = user_sex;
//        this.user_location = user_location;
//        this.user_tel = user_tel;
//    }
}
