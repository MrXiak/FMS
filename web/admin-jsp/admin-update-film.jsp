<%--
  Created by IntelliJ IDEA.
  User: 夏康
  Date: 2020/10/17
  Time: 13:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>修改电影信息</title>
    <link rel="icon" href="../image/icon_bear.svg" type="image/x-icon">
    <script src="../js/jquery/jquery-3.2.1.js"></script>
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <script src="../layui/layui.all.js"></script>
    <link rel="stylesheet" href="../css/logo-icon.css">
    <link rel="stylesheet" href="../css/admin-addfilm.css">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div class="admin_addfilm_maincontainer">
            <form class="layui-form" action="${pageContext.request.contextPath}/update_FilmInfo.action" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">影片海报</label>
                    <div class="layui-input-block" style="width: 500px;">
                        <input type="text" name="road" placeholder="海报路径" autocomplete="off" class="layui-input" value="${F.film_img}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">影片编号</label>
                        <div class="layui-input-block" style="width: 500px;">
                            <input id="input_filmid" type="text" name="input_pre_filmid" readonly="readonly" autocomplete="off" class="layui-input" value="${F.film_id}">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">影片名称</label>
                    <div class="layui-input-block" style="width: 500px;">
                        <input type="text" name="p_name" placeholder="请输入影片名称" autocomplete="off" class="layui-input" value="${F.film_name}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">类型</label>
                    <div class="layui-input-block" style="width: 600px;">
                        <input type="checkbox" name="like[love]" title="爱情" value="爱情" <c:if test="${F.film_type.contains('爱情')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[comedy]" title="喜剧" value="喜剧" <c:if test="${F.film_type.contains('喜剧')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[animation]" title="动画" value="动画" <c:if test="${F.film_type.contains('动画')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[story]" title="剧情" value="剧情" <c:if test="${F.film_type.contains('剧情')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[panic]" title="惊悚" value="惊悚" <c:if test="${F.film_type.contains('惊悚')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[science]" title="科幻" value="科幻" <c:if test="${F.film_type.contains('科幻')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[suspense]" title="悬疑" value="悬疑" <c:if test="${F.film_type.contains('悬疑')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[crime]" title="犯罪" value="犯罪" <c:if test="${F.film_type.contains('犯罪')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[adventure]" title="冒险" value="冒险" <c:if test="${F.film_type.contains('冒险')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[war]" title="战争" value="战争" <c:if test="${F.film_type.contains('战争')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[family]" title="家庭" value="家庭" <c:if test="${F.film_type.contains('家庭')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[swordsman]" title="武侠" value="武侠" <c:if test="${F.film_type.contains('武侠')}"> checked="checked"</c:if>/>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">时长</label>
                    <div class="layui-input-block" style="width: 500px;">
                        <input type="text" name="p_time" placeholder="请输入电影时长xxx（min）" autocomplete="off" class="layui-input" value="${F.film_time}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">导演</label>
                    <div class="layui-input-block" style="width: 500px;">
                        <input type="text" name="p_actor" placeholder="请输入影片导演" autocomplete="off" class="layui-input" value="${F.film_actor}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">上映日期</label>
                        <div class="layui-input-inline">
                            <input type="text" class="layui-input" id="calendar" placeholder="yyyy-MM-dd" name="p_date" value="${F.film_date}">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">版本</label>
                    <div class="layui-input-block">

                        <input type="checkbox" name="like[2D]" title="2D" value="2D" <c:if test="${F.film_version.contains('2D')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[3D]" title="3D" value="3D" <c:if test="${F.film_version.contains('3D')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[2D MAX]" title="2D MAX" value="2D MAX" <c:if test="${F.film_version.contains('2D MAX')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[3D MAX]" title="3D MAX" value="3D MAX" <c:if test="${F.film_version.contains('3D MAX')}"> checked="checked"</c:if>/>
                    </div>
                </div>

                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">电影简介</label>
                    <div class="layui-input-block">
                        <label>
                            <input type="text" name="desc" placeholder="请输入电影介绍" autocomplete="off" class="layui-input" value="${F.film_info}" >
                        </label>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">票价</label>
                    <div class="layui-input-block" style="width: 500px;">
                        <input type="text" name="p_price" placeholder="请输入票价" autocomplete="off" class="layui-input" value="${F.film_price}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">评分</label>
                    <div class="layui-input-block" style="width: 500px;">
                        <input type="text" name="p_score" placeholder="请输入评分" autocomplete="off" class="layui-input" value="${F.film_score}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="submit" class="layui-btn" value="立即提交"/>
                    </div>
                </div>
            </form>

        </div>
    </div>
</div>
<script src="../layui/layui.all.js" charset=""></script>
<script>
    document.getElementById("lifilm").classList.add("layui-this");
    document.getElementById("ddaddfilm").classList.add("layui-this");

    layui.use('laydate' , function() {
        var laydate = layui.laydate;

        //开启公历节日
        laydate.render({
            elem: '#calendar'
            ,calendar: true
            ,trigger:'click'
        });
    });

    //Demo
    layui.use('form', function(){
        var form = layui.form;
        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });

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
</script>
</body>
</html>
