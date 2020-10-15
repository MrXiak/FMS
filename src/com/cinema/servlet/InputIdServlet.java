package com.cinema.servlet;

import com.cinema.dao.IUserDao;
import com.cinema.dao.impl.IUserDaoImpl;
import com.cinema.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class InputIdServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取页面的值
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        String uid=req.getParameter("user_id");
        IUserDao userDao=new IUserDaoImpl();
        User u=userDao.selectByIdOnly(uid);
        if (u!=null){
            u=userDao.changePassword(uid);
            HttpSession session = req.getSession();
            session.setAttribute("U", u);
            req.getRequestDispatcher("./login_register/forgetPassword.jsp").forward(req,resp);
        }else{
            out.print("<script type='text/javascript'>");
            out.print("alert('无此账号，请重新输入！');");
            out.print("window.location='./login_register/inputId.jsp';");
            out.print("</script>");
        }
    }
}
