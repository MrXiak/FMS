<%--
  Created by IntelliJ IDEA.
  User: 67463
  Date: 2020/10/15
  Time: 19:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>影片管理</title>
    <link rel="icon" href="../image/icon_bear.svg" type="image/x-icon">
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <script src="../layui/layui.js"></script>

    <link rel="stylesheet" href="../css/logo-icon.css">
    <link rel="stylesheet" href="../css/admin-film.css">

    <script src="../js/jquery/jquery-3.2.1.js"></script>
    <script src="../js/admin-film-tablepage.js"></script>
    <link rel="stylesheet" href="../css/topage.css">

</head>
<body>
<div class="layui-layout layui-layout-admin">
    <script type="text/javascript" src="../js/admin-navigation-head.js"></script>
    <script type="text/javascript" src="../js/admin-navigation-side-film.js"></script>

    <div class="layui-body" style="">
        <!--             内容主体区域-->
        <div class="admin_film_table">
            <div class="admin_film_table_content">
                <table class="table-normal" id="outBoxTab">
                    <thead>
                    <tr>
                        <th>影片海报</th>
                        <th>影片编号</th>
                        <th>影片名称</th>
                        <th>类型</th>
                        <th>时长</th>
                        <th>导演</th>
                        <th>上映日期</th>
                        <th>版本</th>
                        <th>影片详情</th>
                        <th>票价</th>
                        <th>评分</th>
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
        熊熊电影后台管理系统
    </div>

</div>
<script src="../js/admin-film-tablepage.js"></script>

<script>
    document.getElementById("lifilm").classList.add("layui-this");
    document.getElementById("ddfilm").classList.add("layui-this");
</script>
</body>
</html>