<%@ page import="com.cinema.entity.FilmInfo" %>
<%@ page import="java.util.List" %>
<%@ page import="com.cinema.entity.pageUtils" %><%--<jsp:useBean id="pageutils" scope="request" type="sun.management.snmp.jvminstr.JvmMemGCTableMetaImpl.GCTableFilter"/>--%>

<%--
  Created by IntelliJ IDEA.
  User: 诗
  Date: 2020/10/14
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>Title</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<style type="text/css">
    table#border {
        border-top: #000 1px solid;
        border-left: #000 1px solid;
    }


    table#border td {
        border-bottom: #000 1px solid;
        border-right: #000 1px solid;
    }
    table#border th {
        border-bottom: #000 1px solid;
        border-right: #000 1px solid;
    }
    table#border tr{
        background: GhostWhite;
    }
    table#border tr:nth-child(2n){
        background: Lavender;
    }
    /*table#border tr{*/
    /*    background-color: expression((this.sectionRowIndex % 2 == 0) ?   "GhostWhite" : "Lavender" );*/
    /*}*/
</style>
<script type="text/javascript">
    function toPage(pageutils){
        window.location = 'http://localhost:8080/Film.action?currentPage='+pageutils;
    }
    function toPage2(pageutils){
        var page = document.getElementById("page");
        window.location = 'http://localhost:8080/Film.action?currentPage='+pageutils.value;
    }
</script>

</head>
<body>
<center>
    <br><br>
    <h2>用户列表</h2>
    <table id="border" border="0" cellspacing="0" width="60%" cellspacing="2" cellpadding="2" >
        <tr style="background-color: Honeydew">
            <th>电影海报</th>
            <th>电影编号</th>
            <th>电影名称</th>
            <th>电影时常</th>
            <th>电影导演</th>
            <th>上映日期</th>
            <th>电影详情</th>
            <th>电影价格</th>
            <th>电影评分</th>
        </tr>
        <c:forEach items="${pageutils.records}" var="filmInfo">
            <tr>
                <td><img src="${filmInfo.film_img }"height="200px" width="150px"></td>
                <td>${filmInfo.film_id }</td>
                <td>${filmInfo.film_name }</td>
                <td>${filmInfo.film_time }</td>
                <td>${filmInfo.film_actor }</td>
                <td>${filmInfo.film_date }</td>
                <td>${filmInfo.film_info }</td>
                <td>${filmInfo.film_price }</td>
                <td>${filmInfo.film_score }</td>
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
</center>
</body>
</html>
