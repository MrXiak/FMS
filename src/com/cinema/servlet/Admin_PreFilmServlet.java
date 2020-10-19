package com.cinema.servlet;

import com.cinema.dao.IFilmDao;
import com.cinema.dao.impl.IFilmDaoImpl;
import com.cinema.entity.FilmInfo;
import com.cinema.entity.preFilm;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class Admin_PreFilmServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        //获取页面的值
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");

        String type=req.getParameter("type");
        if("delete".equals(type)){
            String pid=req.getParameter("pre_film_id");
            IFilmDao iFilmDao=new IFilmDaoImpl();
            iFilmDao.del_PreFilm(pid);
            resp.sendRedirect("http://localhost:8080/admin-jsp/admin-beonshow.jsp");
        }else if ("onshow".equals(type)){
            String pid=req.getParameter("pre_film_id");
            IFilmDao iFilmDao=new IFilmDaoImpl();
            preFilm pfi=iFilmDao.find_prefilm(pid);
            HttpSession se=req.getSession();
            se.setAttribute("PF",pfi);
            req.getRequestDispatcher("./admin-jsp/on_PreFilm.jsp").forward(req,resp);
        }
    }
}
