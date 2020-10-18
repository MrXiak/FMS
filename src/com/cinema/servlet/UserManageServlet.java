package com.cinema.servlet;

import com.cinema.dao.IFilmDao;
import com.cinema.dao.IUserDao;
import com.cinema.dao.impl.IFilmDaoImpl;
import com.cinema.dao.impl.IUserDaoImpl;
import com.cinema.entity.FilmInfo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class UserManageServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        //获取页面的值
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();

        String type=req.getParameter("type");
        if("delete".equals(type)){
            String uid=req.getParameter("uid");
            IUserDao iUserDao=new IUserDaoImpl();
            iUserDao.del_User(uid);
            resp.sendRedirect("http://localhost:8080/admin-jsp/admin-user.jsp");
        }
    }
}
