package com.cinema.servlet;

import com.cinema.entity.User;
import com.cinema.service.impl.pageService;
import com.cinema.util.pageUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LogOutServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
    public  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码，防止请求乱码
        request.setCharacterEncoding("UTF-8");
        User user= (User) request.getSession().getAttribute("USER");
        if (null!=user){
            request.getSession().removeAttribute("USER");
        }
//        String currentPage=request.getParameter("currentPage");
//        if (currentPage==null||"".equals(currentPage)){
//            currentPage="1";
//        }
//        pageService pageservice =new pageService();
//        pageUtils pageutils=pageservice.getPreFilm(Integer.parseInt(currentPage));
//        request.setAttribute("pageutils",pageutils);
//        request.getRequestDispatcher("/index/preFilm.jsp").forward(request,response);

    }
}
