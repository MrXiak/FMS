package com.cinema.servlet;

import com.cinema.dao.IUserDao;
import com.cinema.dao.impl.IUserDaoImpl;
import com.cinema.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class InputIdServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取页面的值
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        String uid=req.getParameter("user_id");
        IUserDao userDao=new IUserDaoImpl();
        User u=userDao.changePassword(uid);
        if (u!=null){
            HttpSession session = req.getSession();
            session.setAttribute("U", u);
            req.getRequestDispatcher("./login_register/forgetPassword.jsp").forward(req,resp);
        }
    }
}
