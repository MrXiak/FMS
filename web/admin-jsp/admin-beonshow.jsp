<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.cinema.dao.IFilmDao" %>
<%@ page import="com.cinema.dao.impl.IFilmDaoImpl" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 67463
  Date: 2020/10/16
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>影片上映管理</title>
    <link rel="icon" href="../image/icon_bear.svg" type="image/x-icon">
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <script src="../layui/layui.js"></script>
    <link rel="stylesheet" href="../css/logo-icon.css">
    <link rel="stylesheet" href="../css/admin-film.css">
    <link rel="stylesheet" href="../css/topage.css">
</head>
<%
    IFilmDao iFilmDao=new IFilmDaoImpl();
    List plist=iFilmDao.findAllPreFilm();
%>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <script type="text/javascript" src="../js/admin-navigation-head.js"></script>
    <script type="text/javascript" src="../js/admin-navigation-side-film.js"></script>


    <div class="layui-body">
        <!-- 内容主体区域 -->
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
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="<%= plist%>" var="pl">
                        <tr>
                            <td><img src="http://localhost:8080//filmimage//${pl.pre_film_img}" style="max-width: 100%"></td>
                            <td>${pl.pre_film_id}</td>
                            <td>${pl.pre_film_name}</td>
                            <td>${pl.pre_film_type}</td>
                            <td>${pl.pre_film_time}</td>
                            <td>${pl.pre_film_actor}</td>
                            <td>${pl.pre_film_date}</td>
                            <td>${pl.pre_film_version}</td>
                            <td>${pl.pre_film_info}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/admin_PreFilm.action?type=onshow&pre_film_id=${pl.pre_film_id}"><span>上映</span></a>/
                                <a href="${pageContext.request.contextPath}/admin_PreFilm.action?type=delete&pre_film_id=${pl.pre_film_id}"><span>删除</span></a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="layui-footer">
            <!-- 底部固定区域 -->
            © layui.com - 底部固定区域
        </div>
    </div>
</div>
<script>
    document.getElementById("lifilm").classList.add("layui-this");
    document.getElementById("ddbeonshow").classList.add("layui-this");
</script>
</body>
</html>