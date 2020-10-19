package com.cinema.servlet;

import com.cinema.dao.impl.filmInfoDao;
import com.cinema.entity.Cinema;
import com.cinema.entity.FilmInfo;
import com.cinema.entity.preFilm;
import com.cinema.service.impl.CinemaService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class FilmDetailServlet extends HttpServlet {
    private static final long serialVersionUID=1L;

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,  resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        //设置编码，防止请求乱码
        req.setCharacterEncoding("UTF-8");
        String prefid= req.getParameter("pre_film_id");

        filmInfoDao dao=new filmInfoDao();
        try {
            preFilm prefilm=dao.selectBypreFilmId(prefid);
            HttpSession session = req.getSession();
            session.setAttribute("FILMINFO", prefilm);
            req.getRequestDispatcher("/index/FilmDetail.jsp").forward(req,resp);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}


