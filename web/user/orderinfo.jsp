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
    <script src="../js/jquery/jquery-3.2.1.js"></script>
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
            <div class="main_container_middle_top_left">
                熊熊订单号：
                <span id="orderid">${OD.order_id}</span>
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
                    <td>${OD.film_name}</td>
                    <td>${OD.session_time}</td>
                    <td>${OD.cinema_name}</td>
                    <td>${OD.seat}</td>
                </tr>
            </tbody>
        </table>
        <div class="main_container_middle_foot">
            <div class="main_container_middle_foot_left">
                <span style="color: red">￥</span>
                <span style="color: red; font-size: 30px">${OD.sum_price}</span>
            </div>
            <div class="main_container_middle_foot_right">
                <input type="button" class="order_submit_button" value="确认支付" onclick="showPic()" name="Psw" id="Psw">
            </div>
        </div>
    </div>
</div>

<script>
    FreshTime();
    var sh = setInterval(FreshTime, 1000); // 每秒钟执行一次

    function showPic(){
        var Psw=prompt("请输入支付密码","")
       if(Psw==${USER.user_password}){
           $("#Psw").attr('disabled',true).val('支付成功').css("background-color", "red","color" ,"white");
           alert("支付成功！");
       }else{
           alert("请重新输入密码！");
           showPic();
       }
    }

    // $(document).ready(function (){
    //     $.post("/getUserName.action",function (result){
    //         $("#username").val(result);
    //         $("#thelogin").hide();
    //     })
    // })

    // window.onload(function (){
    //     $.post("/login.action",function (result){
    //         $("#username").text(result);
    //         $("#thelogin").hide();
    //     })
    // })
    // $(document).ready(function (){
    //     $.post("/login.action",function (result){
    //         $("#username").text(result);
    //         $("#thelogin").hide();
    //     })
    // })
</script>

</body>
</html>