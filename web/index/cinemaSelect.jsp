<%--
  Created by IntelliJ IDEA.
  User: 诗
  Date: 2020/10/16
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="../image/icon_bear.svg" type="image/x-icon">
    <link rel="stylesheet" href="../layui/css/layui.css">
    <script src="../layui/layui.js"></script>
    <script src="../js/jquery/jquery-3.2.1.js"></script>
    <link rel="stylesheet" href="../css/cinemaSelect.css">
    <link rel="stylesheet" href="../css/logo-icon.css">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <title>影片放映—熊熊电影</title>
</head>
<body>
<%--导航栏--%>
<script type="text/javascript" src="../js/navigation-head.js"></script>
<%--影片展示--%>
<div id="film_show">
    <div id="nav">
        <div id="nav_img">
            <div id="poster_shadow">
                <img id="poster" src="${FILMINFO.film_img}">
            </div>

        </div>
        <div id="nav_text">
            <div id="text_film">
                <h1 class="name">${FILMINFO.film_name}</h1>
                <div id="film_info">
                    <ul>
                        <li class="ellipsis">${FILMINFO.film_type}</li>
                        <li class="ellipsis">中国大陆/${FILMINFO.film_time}</li>
                        <li class="ellipsis">${FILMINFO.film_date} 08:00中国大陆上映</li>
                    </ul>
                </div>
                <div class="action_btn">
                    <div class="clearfix">
                        <a class="wish">
                            <div>
                                <span class="msg">想看</span>
                            </div>
                        </a>
                        <a class="score_btn">
                            <div>
                                <span class="msg">评分</span>
                            </div>
                        </a>
                    </div>
<%--                    <div  >--%>
<%--                        <a class="btn_buy"href="/filmDetail.action?&film_id=${filmInfo.film_id}">查看电影详情</a>--%>
<%--                    </div>--%>
                </div>
                <div class="movie_stars_nav">
                    <div class="movie_index">
                        <p class="movie_index_title">熊熊口碑</p>
                        <div class="movie_index_content">
                            <span class="left_score">${FILMINFO.film_score}</span>
                            <div class="right_index">
                                <span class="score_num">70.6万人评分</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--主要内容--%>
<div id="container">
    <div class="cinema_list">
        <h2 class="cinema_list_header">
            <span>影院列表</span>
        </h2>
<c:forEach items="${cinemaList}" var="cinemaList">
        <div class="cinema_cell">

            <div class="cinema_info">
                <a class="cinema_name">${cinemaList.cinema_name}</a>
                <p class="cinema_address">地址：如皋市白蒲镇蒲塘路63号文峰大世界3楼上岸影城</p>
            </div>
            <div class="buy_btn">
                <a class="buy_tickets" href="/user/buytickets.jsp">选座购票</a>
            </div>
            <div class="price">
                <span class="rmb">￥</span>
                <span class="price_red">35</span>
                <span>起</span>
            </div>
        </div>
</c:forEach>
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
</html>
