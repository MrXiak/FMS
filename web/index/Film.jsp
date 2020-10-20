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
<%@ page import="com.cinema.entity.preFilm" %>
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
            <li id="hotting"><a class="hotting_a"  href="/Film.action">正在热映</a></li>
            <li id="updating"><a class="hotting_a" href="/preFilm.action">即将上映</a> </li>
        </ul>
    </div>
</div>
<div id="container">
                <%--影片展示--%>
                <div  style="margin-top:50px;height: 800px;width: 1200px">
                <div id="film_page">

<%--                    <table >--%>
<%--                        <tr >--%>
                <c:forEach items="${pageutils.records}" var="filmInfo">
                    <div style="float: left;margin-top: 20px;margin-left: 20px">
                        <a href="#" >
                            <div class="film_img">
                                <img src="http://localhost:8080//filmimage//${filmInfo.film_img }" height="200px" width="150px">
                                <div class="film_info">
                                    <div class="film_name">${filmInfo.film_name }</div>
                                    <div class="film_score">${filmInfo.film_score }</div>
                                </div>
                            </div>
                                <a href="/cinema.action?&film_id=${filmInfo.film_id}"><div class="buyTickets">购票</div></a>
                        </a>
                            <div class="film_type" >${filmInfo.film_version }</div>
                        </div>
                </c:forEach>
<%--                        </tr>--%>
<%--                    </table>--%>
                </div>
    </div>
                <%--分页栏--%>
                <div id="page_Select" >
                        <table style="border-collapse: separate;border-spacing: 5px 5px;margin: 0 auto;">
                            <tr style="margin: 0 auto ">
                                <c:forEach begin="${pageutils.beginPage}" end="${pageutils.endPage}" var="pageNum">
                                    <c:if test="${pageNum == pageutils.currentPage}">
                                        <td><a href="#" onclick="toPage(${pageNum})"><font color="red">[${pageNum}]</font></a></td>
                                    </c:if>
                                    <c:if test="${pageNum != pageutils.currentPage}">
                                        <td><a href="#" onclick="toPage(${pageNum})"><font color="black">[${pageNum}]</font></a></td>
                                    </c:if>
                                </c:forEach>
                            </tr>
                            <tr>
                                <td><a href="#" onclick="toPage(${pageutils.firstPage})">首页</a></td>
                                <td><a href="#" onclick="toPage(${pageutils.pre})">上一页</a></td>
                                <td><a href="#" onclick="toPage(${pageutils.next})">下一页</a></td>
                                <td><a href="#" onclick="toPage(${pageutils.lastPage})">末页</a></td>
<%--                                                <td>--%>
<%--                                                    <input id="page" type="text" size="2"/>--%>
<%--                                                    <input type="button" value="go" onclick="toPage2()"/>--%>
<%--                                                        </td>--%>
                                <td>${pageutils.currentPage}/${pageutils.lastPage}, 共${pageutils.totalRecordsSize}条 </td>
                            </tr>
                        </table>
                </div>

</div>
<%--底部栏--%>
<div class="footer" >
    <p class="friendly-links">
        关于熊熊 :
        <a href="http://ir.maoyan.com/s/index.php#pageScroll0" target="_blank"style="color:red;" >关于我们</a>
        <span></span>
        <a href="http://ir.maoyan.com/s/index.php#pageScroll1" target="_blank"style="color:red;">管理团队</a>
        <span></span>
        <a href="http://ir.maoyan.com/s/index.php#pageScroll2" target="_blank"style="color:red;">投资者关系</a>
        &nbsp;&nbsp;&nbsp;&nbsp;
        友情链接 :
        <a href="http://www.meituan.com" data-query="utm_source=wwwmaoyan" target="_blank" style="color:red;">美团网</a>
        <span></span>
        <a href="http://www.gewara.com" data-query="utm_source=wwwmaoyan"style="color:red;">格瓦拉</a>
        <span></span>
        <a href="http://i.meituan.com/client" data-query="utm_source=wwwmaoyan" target="_blank"style="color:red;">美团下载</a>
        <span></span>
        <a href="https://www.huanxi.com" data-query="utm_source=maoyan_pc" target="_blank"style="color:red;">欢喜首映</a>
    </p>
    <p class="friendly-links">
        商务合作邮箱：v@xiongxiong.com
        客服电话：10105335
        违法和不良信息举报电话：4006018900
    </p>
    <p class="friendly-links">
        用户投诉邮箱：tousujubao@meituan.com
        舞弊线索举报邮箱：wubijubao@maoyan.com
    </p>
    <p class="friendly-links-credentials">
        <a href="/about/licence/1" target="_blank"style="color:red;">中华人民共和国增值电信业务经营许可证 京B2-20190350</a>
        <span></span>
        <a href="/about/licence/4" target="_blank"style="color:red;">营业性演出许可证 京演（机构）（2019）4094号</a>
    </p>
    <p class="friendly-links-credentials">
        <a href="/about/licence/3" target="_blank"style="color:red;">广播电视节目制作经营许可证 （京）字第08478号</a>
        <span></span>
        <a href="/about/licence/2" target="_blank"style="color:red;">网络文化经营许可证 京网文（2019）3837-369号 </a>
    </p>
    <p class="friendly-links-credentials">
        <a href="/rules/agreement" target="_blank"style="color:red;">熊熊用户服务协议 </a>
        <span></span>
        <a href="/rules/rule" target="_blank"style="color:red;">熊熊平台交易规则总则 </a>
        <span></span>
        <a href="/rules/privacy" target="_blank"style="color:red;">隐私政策 </a>
    </p>
    <p class="friendly-links-credentials">
        <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010102003232" target="_blank"style="color:red;">京公网安备
            11010102003232号</a>
        <span></span>
        <a href="http://www.beian.miit.gov.cn/" target="_blank"style="color:red;">京ICP备16022489号</a>
    </p>
    <p class="friendly-links">熊熊电影</p>
    <p class="friendly-links">
        &copy;<span class="my-footer-year">2020</span>
        熊熊电影 xiongxiong.com</p>
    <div class="certificate">
        <a href="http://sq.ccm.gov.cn:80/ccnt/sczr/service/business/emark/toDetail/350CF8BCA8416C4FE0530140A8C0957E"
           target="_blank">
            <img src="https://p0.meituan.net/moviemachine/e54374ccf134d1f7b2c5b075a74fca525326.png" />
        </a>
        <a href="/about/licence/5" target="_blank">
            <img src="https://p1.meituan.net/moviemachine/805f605d5cf1b1a02a4e3a5e29df003b8376.png" />
        </a>
        <a href="https://www.12377.cn" target="_blank">
            <img src="https://p0.meituan.net/scarlett/3cd2a9b7dc179531d20d27a5fd686e783787.png" />
        </a>
    </div>

</div>
</body>
<script type="text/javascript">
        function toPage(pageutils){
            window.location = 'http://localhost:8080/Film.action?currentPage='+pageutils;
        }
        function toPage2(pageutils){
            var page = document.getElementById("page");
            window.location = 'http://localhost:8080/Film.action?currentPage='+pageutils.value;
        }
        // $(document).ready(function (){
        //     $.post("/getUserName.action",function (result){
        //         $("#username").val(result);
        //         $("#thelogin").hide();
        //     })
        // })
</script>

</html>
