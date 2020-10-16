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
    <title>管理员注册</title>
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <script src="../js/jquery/jquery-3.2.1.js"></script>
    <script src="../js/register.js"></script>
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

        .layui-colla-title{
            background-color: white;
        }
        .layui-collapse{
            border: none;
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
            <form action="${pageContext.request.contextPath}/alregister.action" method="post" onsubmit="return reg_validate()">
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
                                    <input type="text" name="r_id" id="r_id" lay-verify="required" placeholder="请输入6-10位账号"
                                           autocomplete="off" class="layui-input">
                                </div>
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
                                        <input type="password" name="r_password" id="r_password" lay-verify="required" placeholder="请输入6-10位密码"
                                               autocomplete="off" class="layui-input">
                                    </label>
                                </div>
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
                                        <input type="password" name="confirm_r_password" id="confirm_r_password" lay-verify="required" placeholder="请再次输入"
                                               autocomplete="off" class="layui-input">
                                    </label>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="register_submit" class="layui-btn layui-btn-danger"
                                   id="register_submit" value="同意以下协议并注册"/></td>
                    </tr>
                    <tr>
                        <td>
                            <div class="layui-collapse">
                                <div class="layui-colla-item">
                                    <h2 class="layui-colla-title">《管理员协议》 </h2>
                                    <div class="layui-colla-content ">除非您已阅读并接受本服务协议所有条款，否则您将不能注册账号......</div>
                                </div>
                                <div class="layui-colla-item">
                                    <h2 class="layui-colla-title">《隐私政策》 </h2>
                                    <div class="layui-colla-content ">我们非常注重保护用户（“您”）的个人信息及隐私......</div>
                                </div>
                            </div>
                        </td>
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
<script src="../layui/layui.js" charset="utf-8"></script>
<script>
    //注意：折叠面板 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function(){
        var element = layui.element;
    });
</script>
</body>
</html>
