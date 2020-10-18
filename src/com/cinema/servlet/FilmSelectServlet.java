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
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class FilmSelectServlet extends HttpServlet {
    private static final long serialVersionUID=1L;

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,  resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        //设置编码，防止请求乱码
        req.setCharacterEncoding("UTF-8");
//        String fimg=req.getParameter("film_img");
        Integer fid= Integer.valueOf(req.getParameter("film_id"));
//        String fname=req.getParameter("film_name");
//        String ftype=req.getParameter("film_type");
//        Integer ftime= Integer.valueOf(req.getParameter("film_time"));
//        String factor=req.getParameter("film_actor");
//        String fdate=req.getParameter("film_date");
//        String fversion=req.getParameter("film_version");
//        String finfo=req.getParameter("film_info");
//        Double fprice= Double.valueOf(req.getParameter("film_price"));
//        Double fscore= Double.valueOf(req.getParameter("film_score"));
        filmInfoDao dao=new filmInfoDao();
        try {
            FilmInfo filmInfo=dao.selectByFilmId(fid);
            HttpSession session = req.getSession();
            session.setAttribute("FILMINFO", filmInfo);


            //创建数据库操作对象
            CinemaService cinemaService=new CinemaService();
            //查询所有电影信息
            List<Cinema> cinemaList=cinemaService.findCinema();
            //保存查询的电影信息
            req.setAttribute("cinemaList",cinemaList);
            req.getRequestDispatcher("/index/cinemaSelect.jsp").forward(req,resp);
        } catch (SQLException e) {
            e.printStackTrace();
        }






    }

}
