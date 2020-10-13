package com.cinema.servlet;

import com.cinema.entity.User;
import com.cinema.service.IUserService;
import com.cinema.service.impl.IUserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取页面的值
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        String uid=req.getParameter("user_id");
        String upass=req.getParameter("user_password");
        //将值封装到对象
        User u=new User();
        u.setUser_id(uid);
        u.setUser_password(upass);
        //调用Service层，登录
        IUserService userService=new IUserServiceImpl();
        if (userService.isLogin(u)){
            HttpSession session = req.getSession();
            session.setAttribute("USER", u);
            req.getRequestDispatcher("./user/myInfo.jsp").forward(req,resp);
        }else {
            out.print("<script type='text/javascript'>");
            out.print("alert('账号或密码错误，请核查，如没有账号请注册！');");
            out.print("window.location='./login_register/login.jsp';");
            out.print("</script>");
        }
    }
}
