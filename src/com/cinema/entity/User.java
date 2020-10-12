package com.cinema.entity;

public class User {
    private String user_image;
    private String user_name;
    private String user_id;
    private String user_password;
    private String user_sex;
    private String user_tel;
    private String user_birthday;
    private String life_state;
    private String person_word;

    public String getUser_image() {
        return user_image;
    }

    public void setUser_image(String user_image) {
        this.user_image = user_image;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public String getUser_sex() {
        return user_sex;
    }

    public void setUser_sex(String user_sex) {
        this.user_sex = user_sex;
    }

    public String getUser_tel() {
        return user_tel;
    }

    public void setUser_tel(String user_tel) {
        this.user_tel = user_tel;
    }

    public String getUser_birthday() {
        return user_birthday;
    }

    public void setUser_birthday(String user_birthday) {
        this.user_birthday = user_birthday;
    }

    public String getLife_state() {
        return life_state;
    }

    public void setLife_state(String life_state) {
        this.life_state = life_state;
    }

    public String getPerson_word() {
        return person_word;
    }

    public void setPerson_word(String person_word) {
        this.person_word = person_word;
    }

    @Override
    public String toString() {
        return "User{" +
                "user_image='" + user_image + '\'' +
                ", user_name='" + user_name + '\'' +
                ", user_id='" + user_id + '\'' +
                ", user_password='" + user_password + '\'' +
                ", user_sex='" + user_sex + '\'' +
                ", user_tel='" + user_tel + '\'' +
                ", user_birthday='" + user_birthday + '\'' +
                ", life_state='" + life_state + '\'' +
                ", person_word='" + person_word + '\'' +
                '}';
    }
}
