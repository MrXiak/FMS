<%--
  Created by IntelliJ IDEA.
  User: 67463
  Date: 2020/10/15
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>用户管理</title>
    <link rel="icon" href="../image/icon_bear.svg" type="image/x-icon">
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <script src="../layui/layui.js"></script>
    <link rel="stylesheet" href="../css/logo-icon.css">
    <link rel="stylesheet" href="../css/admin-film.css">
    <script src="../js/jquery/jquery-3.2.1.js"></script>
    <link rel="stylesheet" href="../css/topage.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <script type="text/javascript" src="../js/admin-navigation-head.js"></script>
    <script type="text/javascript" src="../js/admin-navigation-side-user.js"></script>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div class="admin_film_table">
            <div class="admin_film_table_content">
                <table class="table-normal" id="userBoxTab">
                    <thead>
                    <tr>
                        <th>用户头像</th>
                        <th>用户昵称</th>
                        <th>帐号</th>
                        <th>性别</th>
                        <th>电话</th>
                        <th>密保一</th>
                        <th>密保一答案</th>
                        <th>密保二</th>
                        <th>密保二答案</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody> </tbody>
                </table>
            </div>
            <div class="admin_film_table_foot">
                <button type="button" id="up" class="btnShow">上一页</button>
                <button type="button" id="down" class="btnShow ">下一页</button>
            </div>
        </div>
    </div>
    <div class="layui-footer">
        <!-- 底部固定区域 -->
        熊熊电影管理系统
    </div>
</div>
</div>

<script src="../js/admin-user-tablepage.js"></script>

<script>
    document.getElementById("liuser").classList.add("layui-this");
    document.getElementById("dduser").classList.add("layui-this");
</script>
</body>
</html>