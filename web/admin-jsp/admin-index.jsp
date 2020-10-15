<%--
  Created by IntelliJ IDEA.
  User: 67463
  Date: 2020/10/15
  Time: 19:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>熊熊电影-管理员</title>
    <link rel="icon" href="../image/icon_bear.svg" type="image/x-icon">
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <script src="../layui/layui.js"></script>
    <link rel="stylesheet" href="../css/admin-index.css">
    <link rel="stylesheet" href="../css/logo-icon.css">
    <style>
        .demo-carousel{height: 100%; line-height: 600px; text-align: center;}
    </style>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <script type="text/javascript" src="../js/admin-navigation-head.js"></script>

    <div class="admin_main_container">
        <!--         内容主体区域-->
        <div class="layui-carousel" id="test1">
            <div carousel-item>
                <div><p class="layui-bg-green demo-carousel">欢迎进入熊熊电影后台管理界面！</p></div>
                <div><p class="layui-bg-red demo-carousel">你可以在本界面执行关于电影、用户的系统管理员操作</p></div>
                <div><p class="layui-bg-blue demo-carousel">你可以点击顶部导航选择对电影、用户进行操作</p></div>
                <div><p class="layui-bg-orange demo-carousel">你可以点击左侧导航对电影、用户各细节进行操作</p></div>
                <div><p class="layui-bg-cyan demo-carousel">祝你使用愉快！</p></div>
            </div>
        </div>
    </div>
</div>
<script>
    layui.config({
        version: '1598935358933' //为了更新 js 缓存，可忽略
    });

    layui.use(['layer', 'carousel', 'element'], function(){
        var layer = layui.layer //弹层
            ,carousel = layui.carousel //轮播

        //向世界问个好
        layer.msg('欢迎进入熊熊电影后台管理界面！');

        //执行一个轮播实例
        carousel.render({
            elem: '#test1'
            ,width: '100%' //设置容器宽度
            ,height: '100%'
            ,arrow: 'none' //不显示箭头
            ,anim: 'fade' //切换动画方式
        });

    });
</script>
</body>
</html>