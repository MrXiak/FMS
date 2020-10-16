package com.cinema.util;

import java.sql.*;

public class DBUtil {
    private static Connection conn;
    private static PreparedStatement ps;
    private static ResultSet rs;

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");//加载驱动类
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static void initConnection() {//初始化连接信息
        try {//初始化connect对象
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fms?serverTimezone=GMT%2B8&useSSL=false","root","123wswj,");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public static void initPrepareStatement(String sql) {
        if (conn == null && CommonUtil.isEmpty(sql)) {
            return;
        }
        try {
            ps=conn.prepareStatement(sql);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public static void setPar(Object... args) {
        if (ps == null || args == null) {
            return;
        }
        try {
            for (int i = 0; i < args.length; i++) {
                ps.setObject(i + 1, args[i]);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public static void executeQuery() {
        try {
            rs = ps.executeQuery();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public static boolean executeUpdate() {
        int count = 0;
        try {
            count = ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return count > 0;
    }

    public static void close() {
        try {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
    public static ResultSet getRes() {
        return rs;
    }
}
