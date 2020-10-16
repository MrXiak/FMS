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
        <link rel="stylesheet" href="../layui/css/layui.css" media="all">
        <script src="../layui/layui.js"></script>
        <script src="../js/jquery/jquery-3.2.1.js"></script>

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
                    pathn = "userorder.html";
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

<script>
    layui.use('form', function () {
        var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功
        form.on('checkbox(filter)', function (data) {
            console.log(data.elem); //得到checkbox原始DOM对象
            console.log(data.elem.checked); //是否被选中，true或者false
            console.log(data.value); //复选框value值，也可以通过data.elem.value得到
            console.log(data.othis); //得到美化后的DOM对象
        });
        form.on('radio(filter)', function (data) {
            console.log(data.elem); //得到radio原始DOM对象
            console.log(data.value); //被点击的radio的value值
        });
        form.render(null, "test");
    });
    layui.use('upload', function () {
        var $ = layui.jquery
            , upload = layui.upload;
        //普通图片上传
        var uploadInst = upload.render({
            elem: '#test1'
            , url: '${pageContext.request.contextPath}/image/' //改成您自己的上传接口
            , before: function (obj) {
                //预读本地文件示例，不支持ie8
                obj.preview(function (index, file, result) {
                    $('#demo1').attr('src', result); //图片链接（base64）
                });
            }
            , done: function (res) {
                //如果上传失败
                if (res.code > 0) {
                    return layer.msg('上传失败');
                }
                //上传成功
            }
            , error: function () {
                //演示失败状态，并实现重传
                var demoText = $('#demoText');
                demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                demoText.find('.demo-reload').on('click', function () {
                    uploadInst.upload();
                });
            }
        });
    })
</script>


</body>

</html>