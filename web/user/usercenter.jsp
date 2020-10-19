<%--
  Created by IntelliJ IDEA.
  User: 67463
  Date: 2020/10/16
  Time: 18:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人中心</title>
    <link rel="stylesheet" href="../css/usercenter.css">
    <link rel="stylesheet" href="../layui/css/layui.css">
    <script src="../layui/layui.js"></script>
    <link rel="icon" href="../image/icon_bear.svg" type="image/x-icon">
    <link rel="stylesheet" href="../css/logo-icon.css">
    <script src="../js/jquery/jquery-3.2.1.js"></script>
    <script src="../js/myInfo.js"></script>
</head>
<body>
<script type="text/javascript" src="../js/navigation-head.js"></script>
<div class="center_main_container">
    <div class="center_main_container_left">
        <div class="title_h1">
            <h1>个人中心</h1>
        </div>
        <ul class="usermenu">
            <li data-id="order" class="choice_tab">
                <!--                    <div class="choice_tab">-->
                我的订单
                <!--                    </div>-->
            </li>
            <li data-id="info" class="choice_tab">
                <!--                    <div class="choice_tab">-->
                基本信息
                <!--                    </div>-->
            </li>
        </ul>
    </div>
    <div class="center_main_container_right" id="content">

    </div>
</div>

<script>
    $(function() {
        $(".usermenu").on("click", "li", function() {
            var sId = $(this).data("id"); //获取data-id的值
            window.location.hash = sId; //设置锚点
            loadInner(sId);
        });

        function loadInner(sId) {
            var sId = window.location.hash;
            var pathn, i;
            switch(sId) {
                case "#order":
                    pathn = "userorder.jsp";
                    i = 0;
                    break;
                case "#info":
                    pathn = "userinfo.jsp";
                    i = 1;
                    break;

                default:
                    break;
            }
            $("#content").load(pathn); //加载相对应的内容
            $(".usermenu li").eq(i).addClass("current").siblings().removeClass("current"); //当前列表高亮
        }
        var sId = window.location.hash;
        loadInner(sId);
    });


</script>


</body>

</html>