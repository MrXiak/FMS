<%--
  Created by IntelliJ IDEA.
  User: 夏康
  Date: 2020/10/14
  Time: 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Your Id</title>
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <script src="../js/jquery/jquery-3.2.1.js"></script>
    <script src="../js/InputId.js"></script>
    <style type="text/css">
        #container {
            width: 1500px;
            height: auto;
            margin: 0 auto;
        }

        #top{
            height: 70px;
            width: 500px;

        }
        #top_logo{
            height: 50px;
            width: 50px;
            float: left;
            margin-top: 20px;
            margin-left: 20px;
        }
        #logo_word{
            width: 80px;
            height: 50px;
            text-align: center;
            line-height: 70px;
            float: left;
            margin-top: 10px;
            font-size: 16px;
            color: #009688;
        }


        #middle {
            width: 100%;
            height: 450px;
            padding-top: 100px;
        }

        #login_left{
            width: 500px;
            height: 400px;
            margin: auto;
        }
        #main {
            padding-top: 80px;
            padding-left: 80px;
            margin: auto;
            margin-top: 100px;
        }

        #bottom {
            height: 50px;
            width: 100%;

        }

        #login_h3 {
            text-align: center;
        }

        .layui-btn-danger {
            width: 300px;
        }

        #register_word {
            margin-left: -10px;
            margin-bottom: 30px;
            width: 200px;
        }

        .layui-input {
            width: 200px;
        }

        .layui-form-label {
            margin-left: -30px;
            width: 100px;
        }

        a {
            color: red;
        }

        hr {
            height: 2px;
            background-color: red;
            border: 10px;
        }


    </style>
</head>
<body>
<div id="container">
    <div id="top">
        <div id="top_logo">
            <img src="../image/head_image.png" height="50px" width="50px" alt="logo">
        </div>
        <div id="logo_word">熊熊电影</div>
    </div>
    <hr>
    <div id="middle">
        <div id="login_left">
            <form action="${pageContext.request.contextPath}/inputId.action" method="post" onsubmit="return inputId()">
                <table id="main">
                    <tr>
                        <td class="layui-form-label" style="font-size: 30px;" id="register_word">忘记/修改密码</td>
                    </tr>
                    <tr>
                        <td>
                            <div class="layui-form-item">
                                <label class="layui-form-label"><i class="layui-icon layui-icon-username"
                                                                   style="font-size: 20px; color: #000000;">您的账号</i></label>
                                <div class="layui-input-inline">
                                    <input type="text" name="user_id" id="user_id" lay-verify="required" placeholder="请输入"
                                           autocomplete="off" class="layui-input">
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="Confirm_Id" class="layui-btn layui-btn-danger"
                                   id="Confirm_Id" value="确认"/></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <hr>
    <div id="bottom">
        <h4 id="login_h3">©2020 京ICP证070791号 京公网安备11010502025545号</h4>
    </div>
</div>
</body>
</html>
