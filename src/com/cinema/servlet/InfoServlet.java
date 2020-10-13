package com.cinema.servlet;

import com.cinema.entity.User;
import com.cinema.service.IUserService;
import com.cinema.service.impl.IUserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class InfoServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取页面的值
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        String uname=req.getParameter("qname");//引的是name
        String uid=req.getParameter("user_id");
        String sex = req.getParameter("sex");
        String tel= req.getParameter("utel");
        String birth=req.getParameter("year");
        String life_state=req.getParameter("state");
        //复选框
        String write=req.getParameter("like[write]");
        String read=req.getParameter("like[read]");
        String daze=req.getParameter("like[daze]");
        String food=req.getParameter("like[food]");
        String animals=req.getParameter("like[animals]");
        String travel=req.getParameter("like[travel]");
        String music=req.getParameter("like[music]");
        String sports=req.getParameter("like[sports]");
        String science=req.getParameter("like[science]");
        String car=req.getParameter("like[car]");
        String fashion=req.getParameter("like[fashion]");
        String camera=req.getParameter("like[camera]");
        if (write == null) {
            write = " ";
        }
        if (read == null) {
            read = " ";
        }
        if (daze == null) {
            daze = " ";
        }
        if (food == null) {
            food = " ";
        }
        if (animals == null) {
            animals = " ";
        }
        if (travel == null) {
            travel = " ";
        }
        if (music == null) {
            music = " ";
        }
        if (sports == null) {
            sports = " ";
        }
        if (science == null) {
            science = " ";
        }
        if (car == null) {
            car = " ";
        }
        if (fashion == null) {
            fashion = " ";
        }
        if (camera == null) {
            camera = " ";
        }
        String word=req.getParameter("person_word");
        User u=new User();
        u.setUser_name(uname);
        u.setUser_id(uid);
        u.setUser_sex(sex);
        u.setUser_tel(tel);
        u.setUser_birthday(birth);
        u.setLife_state(life_state);
        u.setHobbies(write+read+daze+food+animals+travel+music+sports+science+car+fashion+camera);
        u.setPerson_word(word);

        //调用Service层
        req.setAttribute("list", u);
//        req.getSession().setAttribute("list",u);
//        req.getServletContext().setAttribute("list",u);
        IUserService userService=new IUserServiceImpl();
        if (userService.isUpdate(u)){
            req.getRequestDispatcher("./user/success.jsp").forward(req,resp);
        }else{
            req.getRequestDispatcher("./user/fail.jsp").forward(req,resp);
        }
    }
}
