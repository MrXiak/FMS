<%--
  Created by IntelliJ IDEA.
  User: 67463
  Date: 2020/10/7
  Time: 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>购票</title>
    <link rel="icon" href="../image/icon_bear.svg" type="image/x-icon">
    <link rel="stylesheet" href="../css/buytickets.css">
    <script src="../js/jquery/jquery-3.2.1.js"></script>
    <script src="../js/buytickets.js"></script>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <script src="../layui/layui.js"></script>
</head>
<body>
<script type="text/javascript" src="../js/navigation-head.js"></script>

<div class="main_container">
    <div id="main_container_left">
        <div id="main_container_left_table">
            <table class="table_chooseseats" id="tab_chooseseats" >
                <thead id="th1">

                </thead>
                <tbody id="tb1">

                </tbody>
            </table>
        </div>
    </div>
    <div id="main_container_right">
        <div id="main_container_right_top">
            <div id="main_container_right_top_pic">
                <img src="http://localhost:8080//filmimage//${FILMINFO.film_img}"style="max-width: 100%">
            </div>
            <div id="main_container_right_top_content">
                <p class="p_title" id="filmname">${FILMINFO.film_name}</p>

                <div class="info_item">
                    <span class="span_introduction_color" style="font-size: 12px">类型：</span>
                    <span class="p_introduction" style="font-size: 12px">${FILMINFO.film_version}</span>
                </div>
                <div class="info_item">
                    <span class="span_introduction_color" style="font-size: 12px">时长：</span>
                    <span class="p_introduction"  style="font-size: 12px">${FILMINFO.film_time}</span>
                </div>
            </div>
        </div>
        <div id="main_container_right_middle">
            <div class="show_info">
                <span class="span_introduction_color">影院：</span>
                <span class="p_introduction" id="cinema_name">星轶IMAX影城（如皋吾悦广场旗舰店）</span>
            </div>
            <div class="show_info">
                <span class="span_introduction_color">影厅：</span>
                <span class="p_introduction">2号世博口腔激光厅</span>
            </div>
            <div class="show_info">
                <span class="span_introduction_color">版本：</span>
                <span class="p_introduction">${FILMINFO.film_version}</span>
            </div>
            <div class="show_info">
                <span class="span_introduction_color">场次：</span>
                <span class="p_introduction" id="session_time" style="color: red">${FILMINFO.film_date} 21:40</span>
            </div>
            <div class="show_info">
                <span class="span_introduction_color">票价：</span>
                <span class="p_introduction">￥${FILMINFO.film_price}/张</span>
            </div>
        </div>
        <div id="main_container_right_bottom">
            <div class="has_ticket">
                <span class="span_introduction_color">座位：</span>
                <p class="p_introduction" id="choosed" onclick="test()" style="text-align: center">请<span style="color: red">点击左侧</span>座位图选择座位<br>（最多选择6个座位）</p>
            </div>
            <div class="has_ticket">
                <span class="span_introduction_color">已选票数：</span>
                <span id="counttickets">0</span>
            </div>
            <div class="has_ticket">
                <span style="color: black">总价：<span style="color: red">￥</span></span>
                <span id="total_price" style="color: red; font-size: 50px">0</span>
            </div>
        </div>
        <div id="main_container_right_button">
            <input class="submit_button" type="button" value="确认选座" onclick="createorder()">
        </div>

    </div>
</div>
<script>
    function test(){

        console.log($("#filmname").val());
        console.log($("#total_price").text());
        console.log($("#choosed").text());
    }
  /*  $.post("./Order.action",{film_name:})*/


    layui.use('element', function(){
        var element = layui.element;
    });

    // $(document).ready(function (){
    //     $.post("/getUserName.action",function (result){
    //         $("#username").val(result);
    //         $("#thelogin").hide();
    //     })
    // })
</script>
</body>
</html>
