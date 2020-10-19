package com.cinema.servlet;

import com.cinema.dao.IOrderDao;
import com.cinema.dao.impl.IOrderDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class User_Manage_OrderServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        //获取页面的值
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();

        String type=req.getParameter("type");
        if("delete".equals(type)){
            String order_id=req.getParameter("orderid");
            IOrderDao iOrderDao=new IOrderDaoImpl();
            iOrderDao.del_order(order_id);
            resp.sendRedirect("http://localhost:8080/user/usercenter.jsp#order");
        }
    }
}
