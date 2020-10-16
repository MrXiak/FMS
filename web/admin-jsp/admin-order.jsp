<%--
  Created by IntelliJ IDEA.
  User: 67463
  Date: 2020/10/16
  Time: 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>订单管理</title>
    <link rel="icon" href="../image/icon_bear.svg" type="image/x-icon">
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <script src="../layui/layui.js"></script>
    <link rel="stylesheet" href="../css/logo-icon.css">
    <link rel="stylesheet" href="../css/admin-film.css">
    <link rel="stylesheet" href="../css/topage.css">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <script type="text/javascript" src="../js/admin-navigation-head.js"></script>
    <script type="text/javascript" src="../js/admin-navigation-side-user.js"></script>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div class="admin_film_table">
            <div class="admin_film_table_content">
                <table class="table-normal" id="outBoxTab">
                    <thead>
                    <tr>
                        <th>订单编号</th>
                        <th>影片名称</th>
                        <th>场次时间</th>
                        <th>影院名称</th>
                        <th>座位</th>
                        <th>总价</th>
                        <th>支付状态</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <button type="button" class="btnoperate edit">上映</button>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="admin_film_table_foot">
                <button type="button" id="up" class="btnShow">上一页</button>
                <button type="button" id="down" class="btnShow ">下一页</button>
            </div>
        </div>

        <div class="layui-footer">
            <!-- 底部固定区域 -->
            © layui.com - 底部固定区域
        </div>
    </div>
</div>
<script>
    document.getElementById("liuser").classList.add("layui-this");
    document.getElementById("ddorder").classList.add("layui-this");
</script>
</body>
</html>