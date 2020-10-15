package com.cinema.servlet;

import com.cinema.dao.filmInfoDao;
import com.cinema.entity.FilmInfo;
import com.cinema.service.pageService;
import com.cinema.util.pageUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class pageServlet extends HttpServlet {
    private static final long serialVersionUID=1L;
    private pageService pageservice =new pageService();
    protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
    protected  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码，防止请求乱码
        request.setCharacterEncoding("UTF-8");
        String currentPage=request.getParameter("currentPage");
        if (currentPage==null||"".equals(currentPage)){
            currentPage="1";
        }
        //创建数据库操作对象
        filmInfoDao dao=new filmInfoDao();
        //查询所有电影信息
        List<FilmInfo> filmInfoList=dao.findAll();
        //保存查询的电影信息
        request.setAttribute("filmInfoList",filmInfoList);
        pageUtils pageutils=pageservice.getFilms(Integer.parseInt(currentPage));
        request.setAttribute("pageutils",pageutils);
//        request.getRequestDispatcher("/index/pagetest.jsp").forward(request,response);
        request.getRequestDispatcher("/index/Film.jsp").forward(request,response);
    }

}
