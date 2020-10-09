package com.cinema.servlet;

import com.cinema.entity.User;
import com.cinema.service.IUserService;
import com.cinema.service.impl.IUserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println("hhh");
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取页面的值
        req.setCharacterEncoding("utf-8");
        String uid=req.getParameter("user_id");
        String upass=req.getParameter("user_password");
        //将值封装到对象
        User u=new User();
        u.setUser_id(uid);
        u.setUser_password(upass);
        //调用Service层，登录
        IUserService userService=new IUserServiceImpl();
        if (userService.isLogin(u)){
//            req.getRequestDispatcher("./register.jsp").forward(req,resp);
            req.getRequestDispatcher("./login_register/register.jsp").forward(req,resp);
        }else {
            req.getRequestDispatcher("./login_register/register.jsp").forward(req,resp);
        }
    }
}
