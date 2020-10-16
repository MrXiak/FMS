<%--
  Created by IntelliJ IDEA.
  User: 夏康
  Date: 2020/10/16
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <script src="../js/jquery/jquery-3.2.1.js"></script>
    <script src="../js/login.js"></script>
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

        #login_right {
           margin: auto;
        }

        #main {
            padding-top: 80px;
            padding-left: 80px;
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

        a {
            color: red;
        }

        #login_word {
            margin-left: 2px;
            margin-bottom: 30px;
            width: 200px;
        }

        .layui-input {
            width: 200px;
        }

        .layui-form-label {
            margin-left: -30px;
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
        <div id="login_right">
            <form action="${pageContext.request.contextPath}/allogin.action" method="post" onsubmit="return alvalidate()">
                <table id="main">
                    <tr>
                        <td class="layui-form-label" style="font-size: 30px;" id="login_word">管理员登录</td>
                    </tr>
                    <tr>
                        <td>
                            <div class="layui-form-item">
                                <label class="layui-form-label"><i class="layui-icon layui-icon-username"
                                                                   style="font-size: 20px; color: #000000;">账号</i></label>
                                <div class="layui-input-inline">
                                    <label>
                                        <input type="text" name="al_id" id="al_id" lay-verify="required" placeholder="请输入"
                                               autocomplete="off" class="layui-input">
                                    </label>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="layui-form-item">
                                <label class="layui-form-label"><i class="layui-icon  layui-icon-password"
                                                                   style="font-size: 20px; color: #000000;">密码</i></label>
                                <div class="layui-input-inline">
                                    <label>
                                        <input type="password" name="al_password" id="al_password" lay-verify="required" placeholder="请输入"
                                               autocomplete="off" class="layui-input">
                                    </label>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="login_submit" class="layui-btn layui-btn-danger"
                                   id="login_reg_submit" value="登录"/></td>
                    </tr>
                    <tr>
                        <td>还没有账号？<a href="../login_register/register.jsp">管理员注册</a></td>
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
