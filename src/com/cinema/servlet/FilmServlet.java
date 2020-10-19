package com.cinema.servlet;

import com.cinema.dao.impl.filmInfoDao;
import com.cinema.dao.impl.filmInfoDao;
import com.cinema.entity.FilmInfo;
import com.cinema.entity.preFilm;
import com.cinema.service.preFilmService;
import com.cinema.util.pageUtils;
import com.sun.deploy.net.HttpResponse;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;


public class FilmServlet extends HttpServlet {
    private static final long serialVersionUID=1L;

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,  resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        //设置编码，防止请求乱码
        req.setCharacterEncoding("UTF-8");
        
            //创建数据库操作对象
            filmInfoDao dao=new filmInfoDao();
            //查询所有电影信息
            List<FilmInfo> filmInfoList=dao.findAll();
            //保存查询的电影信息
            req.setAttribute("filmInfoList",filmInfoList);

            //创建数据库操作对象
            preFilmService dao1=new preFilmService();
            //即将上映的影片在首页显示8个
            List<preFilm> preFilmList=dao1.findPreAll();
            req.setAttribute("preFilmList",preFilmList);
        //转发请求
        req.getRequestDispatcher("/index/index.jsp").forward(req,resp);
    }

}
