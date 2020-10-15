package com.cinema.servlet;

import com.cinema.dao.ITicketsDao;
import com.cinema.dao.impl.ITicketsDaoImpl;
import com.cinema.entity.Ticket;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class inputFilmIdServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取页面的值
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        String filmid=req.getParameter("film_id");
        ITicketsDao ticketsDao=new ITicketsDaoImpl();
        Ticket t=ticketsDao.selectByfilmID(filmid);
        if (t!=null){
            HttpSession session = req.getSession();
            session.setAttribute("T", t);
            req.getRequestDispatcher("./user/buytickets.jsp").forward(req,resp);
        }
//        PrintWriter out = resp.getWriter();
//        String uid=req.getParameter("user_id");
//        String upass=req.getParameter("user_password");
//        //将值封装到对象
//        User u=new User();
//        u.setUser_id(uid);
//        u.setUser_password(upass);
//        //调用Service层，注册
//        IUserService userService=new IUserServiceImpl();
//        if (userService.isRegister(u)){
//            JOptionPane.showMessageDialog(null, "注册成功");
//            req.getRequestDispatcher("./login_register/login.jsp").forward(req,resp);
//        }else {
//            out.print("<script type='text/javascript'>");
//            out.print("alert('账号已被注册，请重新填写！');");
//            out.print("window.location='./login_register/register.jsp';");
//            out.print("</script>");
//        }
    }
}
