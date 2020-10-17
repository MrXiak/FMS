package com.cinema.servlet;

import com.cinema.dao.IFilmDao;
import com.cinema.dao.impl.IFilmDaoImpl;
import com.cinema.entity.FilmInfo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;


public class FilmManageServlet extends HttpServlet {
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
            String fid=req.getParameter("filmid");
            IFilmDao iFilmDao=new IFilmDaoImpl();
            iFilmDao.del_Film(fid);
            resp.sendRedirect("http://localhost:8080/admin-jsp/admin-film.jsp");
        }else if ("update".equals(type)){
            String fid=req.getParameter("filmid");
            IFilmDao iFilmDao=new IFilmDaoImpl();
            FilmInfo fi=iFilmDao.find_It(fid);
            HttpSession s=req.getSession();
            s.setAttribute("F",fi);
            req.getRequestDispatcher("/admin-jsp/admin-update-film.jsp").forward(req,resp);
        }
    }
}
