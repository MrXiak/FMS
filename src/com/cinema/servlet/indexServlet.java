package com.cinema.servlet;

import com.cinema.dao.filmInfoDao;
import com.cinema.entity.FilmInfo;
import com.cinema.entity.preFilm;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class indexServlet extends HttpServlet {
//    private static final long serialVersionUID=1L;
//
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        this.doPost(req,  resp);
//    }
//
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
//        //设置编码，防止请求乱码
//        req.setCharacterEncoding("UTF-8");
//        //创建数据库操作对象
//        filmInfoDao dao=new filmInfoDao();
//        //查询所有电影信息
////        List<FilmInfo> filmInfoList=dao.findAll();
//        List<preFilm> preFilmList=dao.findPreAll();
//        //保存查询的电影信息
//        HttpSession session=req.getSession();
//        session.setAttribute("preFilmList",preFilmList);
////        req.setAttribute("filmInfoList",filmInfoList);
////        req.setAttribute("filmInfoList",filmInfoList);
//        //转发请求
//        req.getRequestDispatcher("/index/index.jsp").forward(req,resp);
////        req.getRequestDispatcher("/inde")
//
//
//    }

}
