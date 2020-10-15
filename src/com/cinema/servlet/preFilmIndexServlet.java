package com.cinema.servlet;

import com.cinema.dao.filmInfoDao;
import com.cinema.entity.preFilm;
import com.cinema.service.preFilmService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class preFilmIndexServlet extends HttpServlet {
    private static final long serialVersionUID=1L;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,  resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码，防止请求乱码
        req.setCharacterEncoding("UTF-8");
        //创建数据库操作对象
        preFilmService dao=new preFilmService();
        //即将上映的影片在首页显示8个
        List<preFilm> preFilmList=dao.findPreAll();
        req.setAttribute("preFilmList",preFilmList);
        req.getRequestDispatcher("/index/index.jsp").forward(req,resp);
    }
}
