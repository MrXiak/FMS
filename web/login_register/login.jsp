<%--
  Created by IntelliJ IDEA.
  User: 夏康
  Date: 2020/10/8
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <script src="../js/jquery/jquery-3.2.1.js"></script>
    <script src="../js/login.js"></script>
    <style type="text/css">
        #container {
            width: 1500px;
            height: auto;
            margin: 0 auto;
        }

        #top {
            height: 60px;
            width: 100%;
        }

        #top_logo {
            margin-left: 20px;
        }

        #middle {
            width: 100%;
            height: 450px;
            padding-top: 100px;
        }

        #login_left,
        #login_right {
            width: 600px;
            height: 400px;
            float: left;
        }

        #login_left {
            margin-left: 250px;
        }

        #login_right {
            padding-top: 50px;
            padding-left: 50px;
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

        #forget {
            float: right;
            color: red;
            font-size: 2px;
        }

        #login_submit {
            width: 100%;
            margin-bottom: 10px;
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
            <img src="../image/logo.jpg" height="44" width="149" alt="logo">
        </div>
    </div>
    <hr>
    <div id="middle">
        <div id="login_left">
            <img src="../image/login.png" alt="login_pictur"/>
        </div>
        <div id="login_right">
            <form action="${pageContext.request.contextPath}/login.action" method="post" onsubmit="return validate()">
                <table id="main">
                    <tr>
                        <td class="layui-form-label" style="font-size: 30px;" id="login_word">账号登录</td>
                    </tr>
                    <tr>
                        <td>
                            <div class="layui-form-item">
                                <label class="layui-form-label"><i class="layui-icon layui-icon-username"
                                                                   style="font-size: 20px; color: #000000;">账号</i></label>
                                <div class="layui-input-inline">
                                    <label>
                                        <input type="text" name="user_id" id="user_id" lay-verify="required" placeholder="请输入"
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
                                        <input type="password" name="user_password" id="user_password" lay-verify="required" placeholder="请输入"
                                               autocomplete="off" class="layui-input">
                                    </label>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="layui-form-label" id="forget"><a href="../login_register/inputId.jsp">忘记/修改密码?</a></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="login_submit" class="layui-btn layui-btn-danger"
                                   id="login_submit" value="登录"/></td>
                    </tr>
                    <tr>
                        <td>还没有账号？<a href="../login_register/register.jsp">免费注册</a></td>
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
