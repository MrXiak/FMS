<%--
  Created by IntelliJ IDEA.
  User: 67463
  Date: 2020/10/12
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>订单详情</title>
    <link rel="icon" href="../image/icon_bear.svg" type="image/x-icon">
    <link rel="stylesheet" href="../css/orderinfo.css">
    <script src="../js/orderinfo.js"></script>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <script src="../layui/layui.js"></script>
    <link rel="stylesheet" href="../css/logo-icon.css">
</head>
<body>
<script type="text/javascript" src="../js/navigation-head.js"></script>

<div class="main_container">
    <div class="main_container_top">
        <div class="main_container_top_icon">
            <i class="icon_order_pay"></i>
        </div>
        <div class="main_container_top_bpay">
            <span class="span_order_pay" id="nopay">待支付</span>
        </div>
        <div class="main_container_top_xtime">
                <span class="span_order_time" id="leftTime">
                    请在<span id="leftMinute" style="color: #f8c90d"></span>分钟<span id="leftSecond" style="color: #f8c90d"></span>秒内完成支付
                </span>
        </div>
    </div>
    <div class="main_container_middle">
        <div class="main_container_middle_top">
            <div class="main_container_middle_top_left" id="orderid">
                订单号：
            </div>
            <div class="main_container_middle_top_right">
                （有订单问题可拨打客服电话：1001-1001，工作时间：9:00-24:00）
            </div>
        </div>
        <table class="main_container_middle_table">
            <thead>
            <tr>
                <td>影片</td>
                <td>时间</td>
                <td>影院</td>
                <td>座位</td>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${T.film_name}</td>
                <td>${T.film_time}</td>
                <td>``````</td>
                <td>``````</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<script>
    getOrderId();
    FreshTime();
    var sh = setInterval(FreshTime, 1000); // 每秒钟执行一次
</script>

</body>
</html>