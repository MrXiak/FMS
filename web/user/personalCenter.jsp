<%--
  Created by IntelliJ IDEA.
  User: 夏康
  Date: 2020/10/12
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PersonalCenter</title>
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }
        html, body {
            height: 100%;
        }
        #container{
            height: 100%;
            width: 1200px;
            border: black 1px solid;
            margin: auto;
        }
        #left {
            height: 100%;
            width: 260px;
            background-color: #F4F3F4;
        }

        #title {
            height: 100px;
            width: 100%;
            text-align: center;
            line-height: 100px;
        }

        #myorder, #info {
            height: 40px;
            width: 100%;
            text-align: center;
            line-height: 50px;
        }

        .hand {
            cursor: pointer;
        }
    </style>
</head>
<body>
<div id="container">
    <div id="left">
        <div id="title"><h1 class="hand">个人中心</h1></div>
        <div id="content">
            <div id="myorder"><h2 class="hand">我的订单</h2></div>
            <div id="info"><h2 class="hand">基本信息</h2></div>
        </div>
    </div>
    <div id="right">

    </div>
</div>
</body>
</html>
