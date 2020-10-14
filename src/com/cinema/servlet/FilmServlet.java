package com.cinema.servlet;

import com.cinema.dao.filmInfoDao;
import com.cinema.entity.FilmInfo;
import com.cinema.util.pageUtils;
import com.sun.deploy.net.HttpResponse;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

public class FilmServlet extends HttpServlet {
    private static final long serialVersionUID=1L;

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,  resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        //设置编码，防止请求乱码
        req.setCharacterEncoding("UTF-8");
        //获取参数
//        String film_img=req.getParameter("film_img");
//        Integer film_id= Integer.valueOf(req.getParameter("film_id"));
//        String  film_name=req.getParameter("film_name");
//        Integer film_time= Integer.valueOf(req.getParameter("film_time"));
//        String film_actor=req.getParameter("film_actor");
//        String film_date=req.getParameter("film_date");
//        String film_info=req.getParameter("film_info");
//        Double film_price= Double.valueOf(req.getParameter("film_price"));
//        Double film_score= Double.valueOf(req.getParameter("film_score"));
        //创建FilmInfo对象保存信息
//        FilmInfo info=new FilmInfo();
//        info.setFilm_img(film_img);
//        info.setFilm_id(film_id);
//        info.setFilm_name(film_name);
//        info.setFilm_time(film_time);
//        info.setFilm_actor(film_actor);
//        info.setFilm_date(film_date);
//        info.setFilm_info(film_info);
//        info.setFilm_price(film_price);
//        info.setFilm_score(film_score);
        //创建数据库操作对象
        filmInfoDao dao=new filmInfoDao();
        //新增电影信息到数据库
//        dao.addFilmInfo(info);
        //查询所有电影信息
        List<FilmInfo> filmInfoList=dao.findAll();
        //保存查询的电影信息
        req.setAttribute("filmInfoList",filmInfoList);

        //转发请求
        req.getRequestDispatcher("/index/Film.jsp").forward(req,resp);
//        req.getRequestDispatcher("/index/index.jsp").forward(req,resp);
    }

}
