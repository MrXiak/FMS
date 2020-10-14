<%--
  Created by IntelliJ IDEA.
  User: 诗
  Date: 2020/10/13
  Time: 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.cinema.entity.FilmInfo"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="icon" href="../image/icon_bear.svg" type="image/x-icon">
    <link rel="stylesheet" href="../layui/css/layui.css">
    <script src="../layui/layui.js"></script>
    <script src="../js/jquery/jquery-3.2.1.js"></script>
    <link rel="stylesheet" href="../css/film.css">
    <link rel="stylesheet" href="../css/logo-icon.css">
    <title>影片放映—熊熊电影</title>
</head>
<body>
<%--导航栏--%>
<script type="text/javascript" src="../js/navigation-head.js"></script>
<%--选择框--%>
<div id="select">
    <div id="select_container">
        <ul class="nav_bar">
            <li id="hotting"><a class="hotting_a"  href="/FilmInfo.action">正在热映</a></li>
            <li id="updating"><a class="hotting_a" href="#">即将上映</a> </li>
        </ul>
    </div>
</div>
<div id="container">
            <%--影片展示--%>
    <div  style="margin-top:50px;height: 800px;width: 1200px">
                <% List<FilmInfo>filmInfoList= (List<FilmInfo>) request.getAttribute("filmInfoList");
                    if (filmInfoList!=null&&!filmInfoList.isEmpty()){
                        for (FilmInfo filmInfo:filmInfoList){
                %>
                <div style="float: left;margin-left:20px">
                <table>
                    <tr>
                        <td>
                            <a href="#" >
                                <div class="film_img">
                                    <img src="<%=filmInfo.getFilm_img()%>" height="200px" width="150px">
                                    <div class="film_info">
                                        <div class="film_name"><%=filmInfo.getFilm_name()%></div>
                                        <div class="film_score"><%=filmInfo.getFilm_score()%></div>
                                    </div>
                                </div>
                                <div class="buyTickets">购票</div>
                            </a>
                            <div class="film_type" >2DIMAX</div>
                        </td>
                    </tr>
                </table>
                </div>
                <% }
                }
                %>
    </div>
    <div id="pageSelect">
        <table>
            <c:forEach items="${pageutils.records}" var="filmInfoList">
                <tr>
                    <td>${film_img }</td>
                    <td>${film_id }</td>
                    <td>${film_name }</td>
                    <td>${film_time }</td>
                    <td>${film_actor }</td>
                    <td>${film_date }</td>
                    <td>${film_info }</td>
                    <td>${film_price }</td>
                    <td>${film_score }</td>
                </tr>
            </c:forEach>
        </table>
        <table>
            <tr>
                <td><a href="#" onclick="toPage(${pageutils.firstPage})">首页</a></td>
                <td><a href="#" onclick="toPage(${pageutils.pre})">上一页</a></td>
                <td><a href="#" onclick="toPage(${pageutils.next})">下一页</a></td>
                <td><a href="#" onclick="toPage(${pageutils.lastPage})">末页</a></td>
                <td>
                    <input id="page" type="text" size="2"/>
                    <input type="button" value="go" onclick="toPage2()"/>
                </td>
                <td>${pageutils.currentPage}/${pageutils.lastPage}, 共${pageutils.totalRecordsSize}条, </td>
                <c:forEach begin="${pageutils.beginPage}" end="${page.endPage}" var="pageNum">
                    <c:if test="${pageNum == pageutils.currentPage}">
                        <td><a href="#" onclick="toPage(${pageNum})"><font color="red">[${pageNum}]</font></a></td>
                    </c:if>
                    <c:if test="${pageNum != pageutils.currentPage}">
                        <td><a href="#" onclick="toPage(${pageNum})"><font color="blue">[${pageNum}]</font></a></td>
                    </c:if>
                </c:forEach>
            </tr>
        </table>
    </div>
            <%--底部栏--%>

</div>


</body>
<script type="text/javascript">
        function toPage(pageutils){
            window.location = 'http://localhost:8080/pageServlet?currentPage='+pageutils;
        }
    function toPage2(pageutils){
        var page = document.getElementById("page");
        window.location = 'http://localhost:8080/pageServlet?currentPage='+pageutils.value;
    }
</script>

</html>
