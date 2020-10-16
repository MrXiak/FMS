package com.cinema.servlet;

import com.cinema.dao.IAdminDao;
import com.cinema.dao.impl.IAdminDaoImpl;
import com.cinema.dao.impl.filmInfoDao;
import com.cinema.entity.AdminInfo;
import com.cinema.entity.FilmInfo;
import com.cinema.entity.User;
import com.cinema.service.IAdminService;
import com.cinema.service.IUserService;
import com.cinema.service.impl.IAdminServiceImpl;
import com.cinema.service.impl.IUserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class Admin_RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,  resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        //获取页面的值
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        String uid=req.getParameter("r_id");
        String upass=req.getParameter("r_password");
        //将值封装到对象
        AdminInfo a=new AdminInfo();
        a.setAdmin_id(uid);
        a.setAdmin_password(upass);
        //调用Service层，注册
        IAdminService adminService=new IAdminServiceImpl();
        if (adminService.isAlRegister(a)){
            JOptionPane.showMessageDialog(null, "注册成功");
            req.getRequestDispatcher("./login_register/login.jsp").forward(req,resp);
        }else {
            out.print("<script type='text/javascript'>");
            out.print("alert('账号已被注册，请重新填写！');");
            out.print("window.location='./admin-jsp/admin-register.jsp';");
            out.print("</script>");
        }
    }
}
