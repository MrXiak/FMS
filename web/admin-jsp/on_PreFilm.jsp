<%--
  Created by IntelliJ IDEA.
  User: 夏康
  Date: 2020/10/17
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>上映电影信息</title>
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
                        <input type="text" name="road" placeholder="海报路径" autocomplete="off" class="layui-input" value="${PF.pre_film_img}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">影片编号</label>
                        <div class="layui-input-block" style="width: 500px;">
                            <input id="input_filmid" type="text" name="input_pre_filmid" readonly="readonly" autocomplete="off" class="layui-input" value="${PF.pre_film_id}">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">影片名称</label>
                    <div class="layui-input-block" style="width: 500px;">
                        <input type="text" name="p_name" placeholder="请输入影片名称" autocomplete="off" class="layui-input" value="${PF.pre_film_name}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">类型</label>
                    <div class="layui-input-block" style="width: 600px;">
                        <input type="checkbox" name="like[love]" title="爱情" value="love" <c:if test="${PF.pre_film_type.contains('love')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[comedy]" title="喜剧" value="comedy" <c:if test="${PF.pre_film_type.contains('comedy')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[animation]" title="动画" value="animation" <c:if test="${PF.pre_film_type.contains('animation')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[story]" title="剧情" value="story" <c:if test="${PF.pre_film_type.contains('story')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[panic]" title="惊悚" value="panic" <c:if test="${PF.pre_film_type.contains('panic')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[science]" title="科幻" value="science" <c:if test="${PF.pre_film_type.contains('science')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[suspense]" title="悬疑" value="suspense" <c:if test="${PF.pre_film_type.contains('suspense')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[crime]" title="犯罪" value="crime" <c:if test="${PF.pre_film_type.contains('crime')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[adventure]" title="冒险" value="adventure" <c:if test="${PF.pre_film_type.contains('adventure')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[war]" title="战争" value="war" <c:if test="${PF.pre_film_type.contains('war')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[family]" title="家庭" value="family" <c:if test="${PF.pre_film_type.contains('family')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[swordsman]" title="武侠" value="swordsman" <c:if test="${PF.pre_film_type.contains('swordsman')}"> checked="checked"</c:if>/>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">时长</label>
                    <div class="layui-input-block" style="width: 500px;">
                        <input type="text" name="p_time" placeholder="请输入电影时长xxx（min）" autocomplete="off" class="layui-input" value="${PF.pre_film_time}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">导演</label>
                    <div class="layui-input-block" style="width: 500px;">
                        <input type="text" name="p_actor" placeholder="请输入影片导演" autocomplete="off" class="layui-input" value="${PF.pre_film_actor}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">上映日期</label>
                        <div class="layui-input-inline">
                            <input type="text" class="layui-input" id="calendar" placeholder="yyyy-MM-dd" name="p_date" value="${PF.pre_film_date}">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">版本</label>
                    <div class="layui-input-block">

                        <input type="checkbox" name="like[2D]" title="2D" value="2D" <c:if test="${PF.pre_film_version.contains('2D')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[3D]" title="3D" value="3D" <c:if test="${PF.pre_film_version.contains('3D')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[2D MAX]" title="2D MAX" value="2D MAX" <c:if test="${PF.pre_film_version.contains('2D MAX')}"> checked="checked"</c:if>/>
                        <input type="checkbox" name="like[3D MAX]" title="3D MAX" value="3D MAX" <c:if test="${PF.pre_film_version.contains('3D MAX')}"> checked="checked"</c:if>/>
                    </div>
                </div>

                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">电影简介</label>
                    <div class="layui-input-block">
                        <label>
                            <textarea name="desc" placeholder="请输入电影介绍" class="layui-textarea"  value="${PF.pre_film_info}"></textarea>
                        </label>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">票价</label>
                    <div class="layui-input-block" style="width: 500px;">
                        <input type="text" name="p_price" placeholder="请输入票价" autocomplete="off" class="layui-input" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">评分</label>
                    <div class="layui-input-block" style="width: 500px;">
                        <input type="text" name="p_score" placeholder="请输入评分" autocomplete="off" class="layui-input" value="暂无评分" readonly="readonly">
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

</body>
</html>
