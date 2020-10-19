package com.cinema.servlet;

import com.cinema.entity.FilmInfo;
import com.cinema.service.IFilmService;
import com.cinema.service.impl.IFilmServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Admin_On_FilmServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        //获取页面的值
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");

        String img=req.getParameter("road");//引的是name
        String pid=req.getParameter("input_pre_filmid");
        String p_name = req.getParameter("p_name");

        //复选框
        String love=req.getParameter("like[love]");
        String comedy=req.getParameter("like[comedy]");
        String animation=req.getParameter("like[animation]");
        String story=req.getParameter("like[story]");
        String panic=req.getParameter("like[panic]");
        String science=req.getParameter("like[science]");
        String suspense=req.getParameter("like[suspense]");
        String crime=req.getParameter("like[crime]");
        String adventure=req.getParameter("like[adventure]");
        String war=req.getParameter("like[war]");
        String family=req.getParameter("like[family]");
        String swordsman=req.getParameter("like[swordsman]");
        if (love == null) {
            love = " ";
        }
        if (comedy == null) {
            comedy = " ";
        }
        if (animation == null) {
            animation = " ";
        }
        if (story == null) {
            story = " ";
        }
        if (panic == null) {
            panic = " ";
        }
        if (science == null) {
            science = " ";
        }
        if (suspense == null) {
            suspense = " ";
        }
        if (crime == null) {
            crime = " ";
        }
        if (adventure == null) {
            adventure = " ";
        }
        if (war == null) {
            war = " ";
        }
        if (family == null) {
            family = " ";
        }
        if (swordsman == null) {
            swordsman = " ";
        }

        String p_time=req.getParameter("p_time");
        String p_actor=req.getParameter("p_actor");
        String p_date=req.getParameter("p_date");

        String twod=req.getParameter("like[2D]");
        String threed=req.getParameter("like[3D]");
        String twodmax=req.getParameter("like[2D MAX]");
        String threedmax=req.getParameter("like[3D MAX]");

        if (twod == null) {
            twod = " ";
        }
        if (threed == null) {
            threed = " ";
        }
        if (twodmax == null) {
            twodmax = " ";
        }
        if (threedmax == null) {
            threedmax = " ";
        }

        String p_info=req.getParameter("desc");
        String p_price=req.getParameter("p_price");
        String p_score=req.getParameter("p_score");

        FilmInfo filmInfo=new FilmInfo();
        filmInfo.setFilm_img(img);
        filmInfo.setFilm_id(pid);
        filmInfo.setFilm_name(p_name);
        filmInfo.setFilm_type(love+comedy+animation+story+panic+science+suspense+crime+adventure+war+family+swordsman);
        filmInfo.setFilm_time(p_time);
        filmInfo.setFilm_actor(p_actor);
        filmInfo.setFilm_date(p_date);
        filmInfo.setFilm_version(twod+threed+twodmax+threedmax);
        filmInfo.setFilm_info(p_info);
        filmInfo.setFilm_price(p_price);
        filmInfo.setFilm_score(p_score);

        IFilmService iFilmService=new IFilmServiceImpl();
        if ( iFilmService.isInsertNew(filmInfo)){
            req.getRequestDispatcher("./admin-jsp/admin-film.jsp").forward(req,resp);
        }else{
            req.getRequestDispatcher("./user/fail.jsp").forward(req,resp);
        }
    }
}
