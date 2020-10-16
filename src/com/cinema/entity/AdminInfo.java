package com.cinema.entity;

public class AdminInfo {
    private String Admin_id;
    private String admin_password;

    public String getAdmin_id() {
        return Admin_id;
    }

    public void setAdmin_id(String admin_id) {
        Admin_id = admin_id;
    }

    public String getAdmin_password() {
        return admin_password;
    }

    public void setAdmin_password(String admin_password) {
        this.admin_password = admin_password;
    }

    @Override
    public String toString() {
        return "AdminInfo{" +
                "Admin_id='" + Admin_id + '\'' +
                ", admiin_password='" + admin_password + '\'' +
                '}';
    }
}
