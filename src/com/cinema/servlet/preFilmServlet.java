package com.cinema.servlet;

import com.cinema.service.pageService;
import com.cinema.util.pageUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class preFilmServlet extends HttpServlet {

    private static final long serialVersionUID=1L;
    private pageService pageservice =new pageService();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
    protected  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码，防止请求乱码
        request.setCharacterEncoding("UTF-8");
        String currentPage=request.getParameter("currentPage");
        if (currentPage==null||"".equals(currentPage)){
            currentPage="1";
        }
        pageUtils pageutils=pageservice.getPreFilm(Integer.parseInt(currentPage));
        request.setAttribute("pageutils",pageutils);
        request.getRequestDispatcher("/index/preFilm.jsp").forward(request,response);

    }

}
