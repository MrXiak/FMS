<%--
  Created by IntelliJ IDEA.
  User: 夏康
  Date: 2020/10/9
  Time: 8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <style type="text/css">
        #container {
            width: 1500px;
            height: auto;
            margin: 0 auto;
        }

        #top {
            height: 100px;
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
            width: 500px;
            height: 400px;
            float: left;
        }

        #login_left {
            margin-left: 350px;
        }

        #login_right {
            padding-left: 50px;
            margin-top: -60px;
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

        #register_word {
            margin-left: -10px;
            margin-bottom: 30px;
            width: 200px;
        }

        .layui-input {
            width: 200px;
        }

        #login_submit {
            width: 100%;
            margin-bottom: 10px;
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

        .tishi {
            font-size: 10px;
            color: gray;
        }
    </style>
</head>
<body>
<div id="container">
    <div id="top">
        <div id="top_logo">
            <img src="../image/logo.jpg" height="44" width="149">
        </div>
    </div>
    <hr>
    <div id="middle">
        <div id="login_left">
            <form action="register.action" method="post">
                <table id="main">
                    <tr>
                        <td class="layui-form-label" style="font-size: 30px;" id="register_word">注册账号</td>
                    </tr>
                    <tr>
                        <td>
                            <div class="layui-form-item">
                                <label class="layui-form-label"><i class="layui-icon layui-icon-username"
                                                                   style="font-size: 20px; color: #000000;">创建账号</i></label>
                                <div class="layui-input-inline">
                                    <input type="text" name="user_id" lay-verify="required" placeholder="请输入"
                                           autocomplete="off" class="layui-input">
                                </div>
<%--                                <label class="tishi">不少于5位</label>--%>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="layui-form-item">
                                <label class="layui-form-label"><i class="layui-icon  layui-icon-password"
                                                                   style="font-size: 20px; color: #000000;">输入密码</i></label>
                                <div class="layui-input-inline">
                                    <label>
                                        <input type="password" name="user_password" lay-verify="required" placeholder="请输入"
                                               autocomplete="off" class="layui-input">
                                    </label>
                                </div>
<%--                                <label class="tishi">请使用字母和数字的组合且不少于6位</label>--%>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="layui-form-item">
                                <label class="layui-form-label"><i class="layui-icon  layui-icon-auz"
                                                                   style="font-size: 20px; color: #000000;">确认密码</i></label>
                                <div class="layui-input-inline">
                                    <label>
                                        <input type="password" name="username" lay-verify="required" placeholder="请输入"
                                               autocomplete="off" class="layui-input">
                                    </label>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="login_submit" class="layui-btn layui-btn-danger"
                                   id="login_submit" value="同意以下协议并注册"/></td>
                    </tr>
                    <tr>
                        <td>
                            <a href="" data-method="notice">《用户服务协议》 </a><a href="">《隐私政策》</a>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div id="login_right">
            <img src="../image/register.jpg" width="400px" height="500px"/>
        </div>
    </div>
    <hr>
    <div id="bottom">
        <h4 id="login_h3">©2020 京ICP证070791号 京公网安备11010502025545号</h4>
    </div>
</div>
</body>
</html>
