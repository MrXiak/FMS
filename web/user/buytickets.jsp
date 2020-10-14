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
<div>
    <ul class="layui-nav" lay-filter="">
        <li class="layui-nav-item"><a href=""><img src="../image/icon_bear.svg" height="44px" width="50px">熊熊电影</a></li>
        <li class="layui-nav-item"><a href="">首页</a></li>
        <li class="layui-nav-item"><a href="">影片</a></li>
        <li class="layui-nav-item">
            <a href="javascript:;">地区选择</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
                <dd><a href="">江苏</a></dd>
                <dd><a href="">北京</a></dd>
                <dd><a href="">上海</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item"><a href="">登录</a></li>
    </ul>
</div>
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
                <img src="https://p0.meituan.net/movie/202ea88abd2abf2aa1964487d61edab64556414.jpg@115w_158h_1e_1c">
            </div>
            <div id="main_container_right_top_content">
                <p class="p_title" id="film_name"></p>
                <div class="info_item">
                    <span class="span_introduction_color" style="font-size: 12px">类型：</span>
                    <span class="p_introduction" style="font-size: 12px" id="film_type"></span>
                </div>
                <div class="info_item">
                    <span class="span_introduction_color" style="font-size: 12px">时长：</span>
                    <span class="p_introduction" style="font-size: 12px" id="film_time"></span>
                </div>
            </div>
        </div>
        <div id="main_container_right_middle">
            <div class="show_info">
                <span class="span_introduction_color">影院：</span>
                <span class="p_introduction" id="cinema_name"></span>
            </div>
            <div class="show_info">
                <span class="span_introduction_color">影厅：</span>
                <span class="p_introduction" id="hall_name"></span>
            </div>
            <div class="show_info">
                <span class="span_introduction_color">版本：</span>
                <span class="p_introduction" id="film_version">国语2D</span>
            </div>
            <div class="show_info">
                <span class="span_introduction_color">场次：</span>
                <span class="p_introduction" style="color: red" id="session_id"></span>
            </div>
            <div class="show_info">
                <span class="span_introduction_color">票价：</span>
                <span class="p_introduction" id="film_price"></span>
            </div>
        </div>
        <div id="main_container_right_bottom">
            <div class="has_ticket">
                <span class="span_introduction_color">座位：</span>
                <p class="p_introduction" id="choosed" style="text-align: center">请<span style="color: red">点击左侧</span>座位图选择座位<br>（最多选择6个座位）</p>
            </div>
            <div class="has_ticket">
                <span class="span_introduction_color">已选票数：</span>
                <span id="counttickets">0</span>
            </div>
            <div class="has_ticket">
                <span style="color: black">总价：<span style="color: red">￥</span></span>
                <span id="total_price" style="color: red; font-size: 30px">0</span>
            </div>
        </div>
        <div id="main_container_right_button">
            <input class="submit_button" type="button" value="确认选座" onclick="createorder()">
        </div>

    </div>
</div>
<script>
    layui.use('element', function(){
        var element = layui.element;
    });

    var film_name="${T.film_name}";
    var film_type="${T.film_type}";
    var film_time="${T.film_time}";
    var film_version="${T.film_version}";
    var film_price="￥"+"${T.film_price}"+"/张";
    document.getElementById("film_name").innerHTML= film_name;
    document.getElementById("film_type").innerHTML= film_type;
    document.getElementById("film_time").innerHTML= film_time;
    document.getElementById("film_version").innerHTML=film_version;
    document.getElementById("film_price").innerHTML= film_price;
</script>
</body>
</html>
