package com.cinema.servlet;

import com.cinema.dao.IUserDao;
import com.cinema.dao.impl.IUserDaoImpl;
import com.cinema.entity.User;
import com.cinema.service.IUserService;
import com.cinema.service.impl.IUserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.IOException;
import java.io.PrintWriter;

public class ForgetPasswordServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取页面的值
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        String uid=req.getParameter("id");
        String answer1=req.getParameter("a1");
        String answer2=req.getParameter("a2");
        String upass=req.getParameter("user_password");
        //将值封装到对象
        User u=new User();
        u.setUser_id(uid);
        u.setAnswer_one(answer1);
        u.setAnswer_two(answer2);
        u.setUser_password(upass);
        IUserService userService=new IUserServiceImpl();
        if (userService.isChangedPass(u)){
            req.getRequestDispatcher("./login_register/login.jsp").forward(req,resp);
        } else {
            out.print("<script type='text/javascript'>");
            out.print("alert('密保错误，请重新填写！');");
            out.print("window.location='./login_register/forgetPassword.jsp';");
            out.print("</script>");
        }
    }
}
