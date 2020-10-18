<%@ page import="com.cinema.entity.FilmInfo" %>
<%@ page import="java.util.List" %>
<%@ page import="com.cinema.entity.preFilm" %><%--
  Created by IntelliJ IDEA.
  User: 诗
  Date: 2020/10/12
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>熊熊电影</title>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <script src="../layui/layui.js"></script>
    <link rel="stylesheet" href="../css/index.css">
    <script src="../js/jquery/jquery-3.2.1.js"></script>
    <script src="../js/index.js"></script>
    <link rel="icon" href="../image/icon_bear.svg" type="image/x-icon">
    <link rel="stylesheet" href="../css/logo-icon.css">
</head>
<body>
<%--导航栏--%>
<script type="text/javascript" src="../js/navigation-head.js"></script>
<div id="main_body">
    <div id="film_pic">
        <div class="layui-carousel" id="test1">
            <div carousel-item>
                <div><img src="../image/shouye3.png"width="100%"height="100%"></div>
                <div><img src="../image/bl.png"width="100%"height="100%"></div>
                <div><img src="../image/fsh.png"width="100%"height="100%"></div>
                <div><img src="../image/dh.png"width="100%"height="100%"></div>
                <div><img src="../image/yun.png"width="100%"height="100%"></div>
            </div>
        </div>
    </div>

    <div id="aside">
        <div id="film_rank">
            <div id="rank_head">
                <span style="font-size: 20px;color: red">今日票房</span>
            </div>
            <div id="rank_content">
                <ul>
                    <li class="first">
                        <a id="a_first" href="#">
                            <div class="first_pic"><img src="https://p0.meituan.net/movie/9efde6939a9cfea9253352dbb6b0b432215095.jpg@465w_258h_1e_1c" height="100%"width="100%"></div>
                            <div class="first_content">我和我的家乡</div>
                            <div class="first_booking">2774.75万</div>
                        </a>
                    </li>
                    <li class="after">
                        <a href="#">
                            <div class="after_num1"><h1>2</h1></div>
                            <div class="after_name">姜子牙</div>
                            <div class="after_booking">620.41万</div>
                        </a>
                    </li>
                    <li class="after">
                        <a href="#">
                            <div class="after_num1"><h1>3</h1></div>
                            <div class="after_name">夺冠</div>
                            <div class="after_booking">598.45万</div>
                        </a>
                    </li>
                    <li class="after">
                        <a href="#">
                            <div class="after_num2"><h1>4</h1></div>
                            <div class="after_name">一点就到家</div>
                            <div class="after_booking">378.10万</div>
                        </a>
                    </li>
                    <li class="after">
                        <a href="#">
                            <div class="after_num2"><h1>5</h1></div>
                            <div class="after_name">急先锋</div>
                            <div class="after_booking">164.72万</div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div id="film_favourite">
            <div id="favourite_head">
                <ul>
                    <li>
                        <span style="font-size: 20px;color: orange">最受期待</span>
                        <a href="#"><span style="font-size: 12px;color: orange;float: right">查看完整榜单></span></a>
                    </li>

                </ul>

            </div>
            <div id="favourite_content">
                <ul>
                    <li class="first1">
                        <a href="#">
                            <div id="first1_pic"><img src="https://p0.meituan.net/movie/df84690ded848edf709187eae23a7969866455.jpg@464w_644h_1e_1c"height="100%"width="100%"></div>
                            <div id="first1_content">送你一朵小红花</div>
                            <div id="first1_time">上映时间：2020-12-31</div>
                            <div id="first1_booking">107406人想看</div>
                        </a>
                    </li>

                    <li class="first2">
                        <div class="first2_left">
                            <a href="#">
                                <div class="first2_pic"><img src="https://p0.meituan.net/movie/fd24cfbb72f4ff966f500b3e2496d558967411.jpg"height="100%"width="100%"></div>
                                <div class="first2_content">唐人街探案3</div>
                                <div class="first2_booking">2840846人想看</div>
                            </a>
                        </div>
                        <div class="first2_right">
                            <a href="#">
                                <div class="first2_pic"><img src="https://p1.meituan.net/mmdb/d72e80ba21223c19c7f505c91cb133e8113407.jpg@465w_258h_1e_1c"height="100%"width="100%"></div>
                                <div class="first2_content">暖暖的拥抱</div>
                                <div class="first2_booking">34402人想看</div>
                            </a>
                        </div>
                    </li>
                    <li class="after">
                        <a href="#">
                            <div class="after_num2"><h1>4</h1></div>
                            <div class="after_name">拆弹专家2</div>
                            <div class="after_booking"style="color:orange;">159489人想看</div>
                        </a>
                    </li>
                    <li class="after">
                        <a href="#">
                            <div class="after_num2"><h1>5</h1></div>
                            <div class="after_name">月半爱丽丝</div>
                            <div class="after_booking"style="color:orange;">29073人想看</div>
                        </a>
                    </li>
                    <li class="after">
                        <a href="#">
                            <div class="after_num2"><h1>6</h1></div>
                            <div class="after_name">金刚川</div>
                            <div class="after_booking"style="color:orange;">23178人想看</div>
                        </a>
                    </li>
                    <li class="after">
                        <a href="#">
                            <div class="after_num2"><h1>7</h1></div>
                            <div class="after_name">紧急救援</div>
                            <div class="after_booking"style="color:orange;">551507人想看</div>
                        </a>
                    </li>
                    <li class="after">
                        <a href="#">
                            <div class="after_num2"><h1>8</h1></div>
                            <div class="after_name">熊出没:狂野大陆</div>
                            <div class="after_booking"style="color:orange;">225199人想看</div>
                        </a>
                    </li>
                    <li class="after">
                        <a href="#">
                            <div class="after_num2"><h1>9</h1></div>
                            <div class="after_name">西游记真假美猴王</div>
                            <div class="after_booking"style="color:orange;">404308人想看</div>
                        </a>
                    </li>
                    <li class="after">
                        <a href="#">
                            <div class="after_num2"><h1>10</h1></div>
                            <div class="after_name">新神榜:哪吒重生</div>
                            <div class="after_booking"style="color:orange;">80333人想看</div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div id="main">
        <div id="film_hot">
            <div class="show">
                <ul>
                    <li style="float: left"><span style="color: red;font-size: 20px;font-weight: bold">正在热映</span></li>
                    <li style="float: right"><a href="/Film.action"><span style="color: red">全部>>></span></a></li>
                </ul>
            </div>
            <% List<FilmInfo>filmInfoList= (List<FilmInfo>) request.getAttribute("filmInfoList");
                if (filmInfoList!=null&&!filmInfoList.isEmpty()){
                    for (FilmInfo filmInfo:filmInfoList){
            %>
            <table style="height: 200px;width: 200px;float: left">
                <tr>
                    <td >
                        <a href="/cinema.action?&film_id=<%=filmInfo.getFilm_id()%>">
                            <div class="film_img">
                                <img src="<%=filmInfo.getFilm_img()%>" height="200px" width="150px">
                                <div class="film_info">
                                    <div class="film_name"><%=filmInfo.getFilm_name()%></div>
                                    <div class="film_score"><%=filmInfo.getFilm_score()%></div>
                                </div>
                            </div>
                            <div class="buyTickets">购票</div>
                        </a>
                        <div class="film_type" ><%=filmInfo.getFilm_version()%></div>
                    </td>
                </tr>

            </table>
            <%
                    }
            }
            %>
        </div>

        <div id="film_updating">
            <div class="show">
                <ul>
                    <li style="float: left"><span style="color: #2d98f3;font-size: 20px;font-weight: bold">即将上映</span></li>
                    <li style="float: right"><a href="/preFilm.action"><span style="color: #2d98f3">全部>>></span></a></li>
                </ul>

            </div>
            <% List<preFilm> preFilmList= (List<preFilm>) request.getAttribute("preFilmList");
                if (preFilmList!=null&&!preFilmList.isEmpty()){
                    for (preFilm prefilm:preFilmList){

            %>
            <table style="height: 200px;width: 200px;float: left">
                <tr>
                    <td>
                        <a href="#">
                            <div class="film_img">
                                <img src="<%=prefilm.getPre_film_img()%>" height="200px" width="150px">
                                <div class="film_info">
                                    <div class="film_name"><%=prefilm.getPre_film_name()%></div>
<%--                                    <div class="film_score"><%=prefilm.getPre_film_id()%></div>--%>
                                </div>
                            </div>
                            <div class="buyTickets">查看详情</div>
                        </a>
                        <div class="film_type" ><%=prefilm.getPre_film_version()%></div>
                    </td>
                </tr>
            </table>
            <%
                    }
                }
            %>
        </div>
    </div>
</div>
<div class="footer" style="a:link">
    <p class="friendly-links">
        关于熊熊 :
        <a href="http://ir.maoyan.com/s/index.php#pageScroll0" target="_blank" >关于我们</a>
        <span></span>
        <a href="http://ir.maoyan.com/s/index.php#pageScroll1" target="_blank">管理团队</a>
        <span></span>
        <a href="http://ir.maoyan.com/s/index.php#pageScroll2" target="_blank">投资者关系</a>
        &nbsp;&nbsp;&nbsp;&nbsp;
        友情链接 :
        <a href="http://www.meituan.com" data-query="utm_source=wwwmaoyan" target="_blank">美团网</a>
        <span></span>
        <a href="http://www.gewara.com" data-query="utm_source=wwwmaoyan">格瓦拉</a>
        <span></span>
        <a href="http://i.meituan.com/client" data-query="utm_source=wwwmaoyan" target="_blank">美团下载</a>
        <span></span>
        <a href="https://www.huanxi.com" data-query="utm_source=maoyan_pc" target="_blank">欢喜首映</a>
    </p>
    <p class="friendly-links">
        商务合作邮箱：v@maoyan.com
        客服电话：10105335
        违法和不良信息举报电话：4006018900
    </p>
    <p class="friendly-links">
        用户投诉邮箱：tousujubao@meituan.com
        舞弊线索举报邮箱：wubijubao@maoyan.com
    </p>
    <p class="friendly-links-credentials">
        <a href="/about/licence/1" target="_blank">中华人民共和国增值电信业务经营许可证 京B2-20190350</a>
        <span></span>
        <a href="/about/licence/4" target="_blank">营业性演出许可证 京演（机构）（2019）4094号</a>
    </p>
    <p class="friendly-links-credentials">
        <a href="/about/licence/3" target="_blank">广播电视节目制作经营许可证 （京）字第08478号</a>
        <span></span>
        <a href="/about/licence/2" target="_blank">网络文化经营许可证 京网文（2019）3837-369号 </a>
    </p>
    <p class="friendly-links-credentials">
        <a href="/rules/agreement" target="_blank">熊熊用户服务协议 </a>
        <span></span>
        <a href="/rules/rule" target="_blank">熊熊平台交易规则总则 </a>
        <span></span>
        <a href="/rules/privacy" target="_blank">隐私政策 </a>
    </p>
    <p class="friendly-links-credentials">
        <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010102003232" target="_blank">京公网安备
            11010102003232号</a>
        <span></span>
        <a href="http://www.beian.miit.gov.cn/" target="_blank">京ICP备16022489号</a>
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
</html>
