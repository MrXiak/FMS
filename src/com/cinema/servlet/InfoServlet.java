package com.cinema.servlet;

import com.cinema.entity.User;
import com.cinema.service.IUserService;
import com.cinema.service.impl.IUserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class InfoServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        //获取页面的值

        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
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
        String q1=req.getParameter("questionone");
        String a1=req.getParameter("answerone");
        String q2=req.getParameter("questiontwo");
        String a2=req.getParameter("answertwo");
        User u=new User();
        u.setUser_name(uname);
        u.setUser_id(uid);
        u.setUser_sex(sex);
        u.setUser_tel(tel);
        u.setUser_birthday(birth);
        u.setLife_state(life_state);
        u.setHobbies(write+read+daze+food+animals+travel+music+sports+science+car+fashion+camera);
        u.setPersonal_word(word);
        u.setQuestion_one(q1);
        u.setAnswer_one(a1);
        u.setQuestion_two(q2);
        u.setAnswer_two(a2);

        //调用Service层
//        req.setAttribute("list", u);
//        req.getSession().setAttribute("list",u);
//        req.getServletContext().setAttribute("list",u);
        IUserService userService=new IUserServiceImpl();
        if (userService.isUpdate(u)){
//        req.getSession().setAttribute("list",u);
//        req.getServletContext().setAttribute("list",u);
            out.print("<script type='text/javascript'>");

            out.print("window.location='./user/usercenter.jsp#info';");
            out.print("</script>");
//            req.getRequestDispatcher("./user/usercenter.jsp#info").forward(req,resp);
        }else{
            out.print("<script type='text/javascript'>");
            out.print("alert('失败！请重新开始保存信息！');");
            out.print("</script>");
//          req.getRequestDispatcher("./user/fail.jsp").forward(req,resp);
        }
    }
}
