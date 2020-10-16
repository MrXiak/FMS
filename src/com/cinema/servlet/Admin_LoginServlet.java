package com.cinema.servlet;

import com.cinema.dao.IAdminDao;
import com.cinema.dao.IUserDao;
import com.cinema.dao.impl.IAdminDaoImpl;
import com.cinema.dao.impl.IUserDaoImpl;
import com.cinema.dao.impl.filmInfoDao;
import com.cinema.entity.AdminInfo;
import com.cinema.entity.FilmInfo;
import com.cinema.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class Admin_LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,  resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        //获取页面的值
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        String uid=req.getParameter("al_id");
        String upass=req.getParameter("al_password");
        IAdminDao adminDao=new IAdminDaoImpl();
        AdminInfo a=adminDao.selectByAlAccount(uid,upass);
        if (a!=null){
            req.getRequestDispatcher("./user/myInfo.jsp").forward(req,resp);
        }else {
            out.print("<script type='text/javascript'>");
            out.print("alert('账号或密码错误，请核查，如没有账号请注册！');");
            out.print("window.location='./admin-jsp/admin-login.jsp';");
            out.print("</script>");
        }
    }
}
