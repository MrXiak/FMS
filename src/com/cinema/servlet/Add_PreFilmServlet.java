package com.cinema.servlet;

import com.cinema.entity.preFilm;
import com.cinema.service.IFilmService;
import com.cinema.service.impl.IFilmServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Add_PreFilmServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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

        preFilm preFilm=new preFilm();
        preFilm.setPre_film_img(img);
        preFilm.setPre_film_id(pid);
        preFilm.setPre_film_name(p_name);
        preFilm.setPre_film_type(love+comedy+animation+story+panic+science+suspense+crime+adventure+war+family+swordsman);
        preFilm.setPre_film_time(p_time);
        preFilm.setPre_film_actor(p_actor);
        preFilm.setPre_film_date(p_date);
        preFilm.setPre_film_version(twod+threed+twodmax+threedmax);
        preFilm.setPre_film_info(p_info);

        //调用Service层
        IFilmService iFilmService=new IFilmServiceImpl();
        if (iFilmService.isInsert(preFilm)){
            req.getRequestDispatcher("./user/success.jsp").forward(req,resp);
        }else{
            req.getRequestDispatcher("./user/fail.jsp").forward(req,resp);
        }
    }
}
