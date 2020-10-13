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
    private String hobbies;
    private String personal_word;
    private String question_one;
    private String answer_one;
    private String question_two;
    private String answer_two;

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

    public String getPersonal_word() {
        return personal_word;
    }

    public void setPersonal_word(String person_word) {
        this.personal_word = person_word;
    }

    public String getHobbies() {
        return hobbies;
    }

    public void setHobbies(String hobbies) {
        this.hobbies = hobbies;
    }

    public String getQuestion_one() {
        return question_one;
    }

    public void setQuestion_one(String question_one) {
        this.question_one = question_one;
    }

    public String getAnswer_one() {
        return answer_one;
    }

    public void setAnswer_one(String answer_one) {
        this.answer_one = answer_one;
    }

    public String getQuestion_two() {
        return question_two;
    }

    public void setQuestion_two(String question_twoo) {
        this.question_two = question_twoo;
    }

    public String getAnswer_two() {
        return answer_two;
    }

    public void setAnswer_two(String answer_two) {
        this.answer_two = answer_two;
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
                ", hobbies='" + hobbies + '\'' +
                ", person_word='" + personal_word + '\'' +
                ", question_one='" + question_one + '\'' +
                ", answer_one='" + answer_one + '\'' +
                ", question_twoo='" + question_two + '\'' +
                ", answer_two='" + answer_two + '\'' +
                '}';
    }
}
