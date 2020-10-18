package com.cinema.servlet;

import com.cinema.dao.impl.filmInfoDao;
import com.cinema.entity.Cinema;
import com.cinema.entity.FilmInfo;
import com.cinema.entity.preFilm;
import com.cinema.service.impl.CinemaService;
import com.cinema.service.preFilmService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class CinemaServlet extends HttpServlet {
    private static final long serialVersionUID=1L;

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,  resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        //设置编码，防止请求乱码
        req.setCharacterEncoding("UTF-8");
        //创建数据库操作对象
        CinemaService cinemaService=new CinemaService();
        //查询所有电影信息
        List<Cinema> cinemaList=cinemaService.findCinema();
        //保存查询的电影信息
        req.setAttribute("cinemaList",cinemaList);
        //转发请求
        req.getRequestDispatcher("/index/cinemaSelect.jsp").forward(req,resp);



    }
}
