package com.cinema.servlet;

import com.cinema.dao.IUserDao;
import com.cinema.dao.impl.IUserDaoImpl;
import com.cinema.dao.impl.filmInfoDao;
import com.cinema.entity.Cinema;
import com.cinema.entity.FilmInfo;
import com.cinema.entity.User;
import com.cinema.entity.preFilm;
import com.cinema.service.IUserService;
import com.cinema.service.impl.CinemaService;
import com.cinema.service.impl.IUserServiceImpl;
import com.cinema.service.impl.pageService;
import com.cinema.service.preFilmService;
import com.cinema.util.pageUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

public class LoginServlet extends HttpServlet {
    private pageService pageservice =new pageService();
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取页面的值
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        String uid=req.getParameter("user_id");
        String upass=req.getParameter("user_password");
//        //将值封装到对象
//        User u=new User();
//        u.setUser_id(uid);
//        u.setUser_password(upass);
//        //调用Service层，登录
//
//        IUserService userService=new IUserServiceImpl();
//        if (userService.isLogin(u)){
//            HttpSession session = req.getSession();
//            session.setAttribute("USER", u);
//            req.getRequestDispatcher("./user/myInfo.jsp").forward(req,resp);
//        }else {
//            out.print("<script type='text/javascript'>");
//            out.print("alert('账号或密码错误，请核查，如没有账号请注册！');");
//            out.print("window.location='./login_register/login.jsp';");
//            out.print("</script>");
//        }
        IUserDao userDao=new IUserDaoImpl();
        User u=userDao.selectByAccount(uid,upass);
        if (u!=null){
            HttpSession session = req.getSession();
            session.setAttribute("USER", u);

            String currentPage=req.getParameter("currentPage");
            if (currentPage==null||"".equals(currentPage)){
                currentPage="1";
            }
            pageUtils pageutils=pageservice.getFilms(Integer.parseInt(currentPage));
            req.setAttribute("pageutils",pageutils);

            //创建数据库操作对象
            CinemaService cinemaService=new CinemaService();
            //查询所有电影信息
            List<Cinema> cinemaList=cinemaService.findCinema();
            //保存查询的电影信息
            req.setAttribute("cinemaList",cinemaList);


            req.getRequestDispatcher("/index/Film.jsp").forward(req,resp);
        }else {
            out.print("<script type='text/javascript'>");
            out.print("alert('账号或密码错误，请核查，如没有账号请注册！');");
            out.print("window.location='./login_register/login.jsp';");
            out.print("</script>");
        }

    }
}
