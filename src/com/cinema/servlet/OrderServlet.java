package com.cinema.servlet;

import com.cinema.dao.IOrderDao;
import com.cinema.dao.IUserDao;
import com.cinema.dao.impl.IOrderDaoImpl;
import com.cinema.dao.impl.IUserDaoImpl;
import com.cinema.dao.impl.filmInfoDao;
import com.cinema.entity.Cinema;
import com.cinema.entity.FilmInfo;
import com.cinema.entity.OrderInfo;
import com.cinema.entity.preFilm;
import com.cinema.service.impl.CinemaService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

public class OrderServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        //获取页面的值
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        String film_name = req.getParameter("film_name");
        String cinema_name = req.getParameter("cinema_name");
        String session_time = req.getParameter("session_time");
        String seat = req.getParameter("seat");
        String total_price = req.getParameter("total_price");


        IOrderDao iOrderDao = new IOrderDaoImpl();
        OrderInfo orderInfo = new OrderInfo();
        orderInfo.setOrder_id(new Date().getTime());
        orderInfo.setFilm_name(film_name);

        orderInfo.setSession_time(session_time);
        orderInfo.setCinema_name(cinema_name);
        orderInfo.setSeat(seat);
        orderInfo.setSum_price(total_price);
        orderInfo.setPay_state("未支付");
        iOrderDao.insertOrder(orderInfo);

        HttpSession session = req.getSession();
        session.setAttribute("OD", orderInfo);




//        String order_id=
//        String film_name=req.getParameter("film_name");
//        String session_time=req.getParameter("session_time");
//        String cinema_name=req.getParameter("cinema_name");
//        String seat=req.getParameter("seat");
//        String sum_price=req.getParameter("sum_price");
//        IOrderDao iOrderDao=new IOrderDaoImpl();
//        iOrderDao.insertOrder(order_id,film_name,session_time,cinema_name,seat,sum_price);

        req.getRequestDispatcher("/user/orderinfo.jsp").forward(req,resp);

    }
}
