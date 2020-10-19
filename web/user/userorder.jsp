<%@ page import="com.cinema.dao.IOrderDao" %>
<%@ page import="com.cinema.dao.impl.IOrderDaoImpl" %>
<%@ page import="com.cinema.entity.OrderInfo" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 诗
  Date: 2020/10/19
  Time: 2:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../css/admin-film.css">
    <link rel="stylesheet" href="../css/topage.css">
</head>
<%
    IOrderDao iOrderDao = new IOrderDaoImpl();
    List<OrderInfo> OrderList = iOrderDao.findAllOrder();
%>
<body>
<div class="center_main_container_right_title">我的订单</div>
<div class="center_main_container_right_content">
    <div class="admin_film_table">
        <div class="admin_film_table_content">
            <table class="table-normal" id="outBoxTab">
                <thead>
                <tr>
                    <th>订单编号</th>
                    <th>影片名称</th>
                    <th>场次时间</th>
                    <th>影院名称</th>
                    <th>座位</th>
                    <th>总价</th>
                    <th>支付状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="<%= OrderList%>" var="ol">
                    <tr>
                        <td>${ol.order_id}</td>
                        <td>${ol.film_name}</td>
                        <td>${ol.session_time}</td>
                        <td>${ol.cinema_name}</td>
                        <td>${ol.seat}</td>
                        <td>${ol.sum_price}</td>
                        <td>${ol.pay_state}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/user_manage_order.action?type=delete&orderid=${ol.order_id}"><span>删除</span></a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>