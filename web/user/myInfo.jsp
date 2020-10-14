<%--
  Created by IntelliJ IDEA.
  User: 夏康
  Date: 2020/10/12
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>MyInfo</title>
    <style type="text/css">
        .Info {
            margin-top: 20px;
            margin-bottom: 20px;
            color: red;
            margin-left: 20px;
        }

        hr {
            height: 10px;
            background-color: gainsboro;
            border: 10px;
        }

        #container {
            width: 940px;
            height: auto;
            margin: auto;
            border: gainsboro 2px solid;
        }

        #main {
            width: 100%;
            height: 1000px;
            margin-top: 5px;
        }

        #main_left, #main_right {
            float: left;
        }

        #main_left {
            width: 400px;
            text-align: center;
            line-height: 400px;

        }

        #main_right {
            width: 530px;
            height: auto;
        }

        #personal_submit {
            width: 150px;
            font-size: 20px;
            height: 40px;
            margin-left: 200px;
            margin-top: 20px;
            margin-bottom: 5px;
        }

        #test1 {
            margin-top: 15px;
        }
    </style>
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <script src="../layui/layui.js"></script>
</head>
<body>
<%--<%--%>
<%--    List list= (List) request.getAttribute("list");--%>
<%--%>--%>
<%--${sessionScope.list}--%>
<div id="container">
    <div id="top"><h2 class="Info">基本信息</h2></div>
    <hr>
    <form action="/myInfo.action" method="post">
        <div id="main">
            <div id="main_left">
                <div class="layui-upload">
                    <div class="layui-upload-list">
                        <img class="layui-upload-img" id="demo1" alt="no" src="../image/head_image.png" width="200px"
                             height="200px">
                        <p id="demoText"></p>
                        <button type="button" class="layui-btn" id="test1">上传图片</button>
                    </div>
                </div>
            </div>
            <div id="main_right">
                <div class="layui-form-item">
                    <label class="layui-form-label">昵称：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="qname" id="qname" lay-verify="required" placeholder="请输入"
                               autocomplete="off" class="layui-input" value="${USER.user_name}">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">账号：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="user_id" id="user_id" lay-verify="required" placeholder="请输入"
                               autocomplete="off" class="layui-input" readonly="readonly" value="${USER.user_id}">
                    </div>
                </div>

                <div class="layui-form" lay-filter="test">
                    <!--                    更新 lay-filter="test1" 所在容器内的全部表单状态-->
                    <div class="layui-form-item">
                        <label class="layui-form-label">性别：</label>
                        <div class="layui-input-block">
                            <input type="radio" name="sex" value="1" id="man"
                                   title="男" ${(USER.user_sex)=="1"?"checked":""}>
                            <input type="radio" name="sex" value="0" id="woman"
                                   title="女" ${(USER.user_sex)=="0"?"checked":""}>
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">电话：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="utel" id="user_tel" lay-verify="required" placeholder="请输入"
                               autocomplete="off" class="layui-input" value="${USER.user_tel}">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">生日：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="year" lay-verify="required" placeholder="请输入"
                               autocomplete="off" class="layui-input" value="${USER.user_birthday}">
                    </div>
                </div>
                <div class="layui-form" lay-filter="test1">
                    <div class="layui-form-item">
                        <label class="layui-form-label">生活状态：</label>
                        <div class="layui-input-block">
                            <input type="radio" name="state" value="danshen"
                                   title="单身" ${(USER.life_state)=="danshen"?"checked":""}>
                            <input type="radio" name="state" value="relian"
                                   title="热恋中" ${(USER.life_state)=="relian"?"checked":""}>
                            <input type="radio" name="state" value="yihun"
                                   title="已婚" ${(USER.life_state)=="yihun"?"checked":""}>
                            <input type="radio" name="state" value="fumu"
                                   title="为人父母" ${(USER.life_state)=="fumu"?"checked":""}>
                        </div>
                    </div>
                </div>
                <div class="layui-form" lay-filter="test1">
                    <div class="layui-form-item">
                        <label class="layui-form-label">兴趣：</label>
                        <div class="layui-input-block">
                            <input type="checkbox" name="like[write]" title="写作" value="write" <c:if
                                    test="${USER.hobbies.contains('write')}"> checked="checked"</c:if>/>
                            <input type="checkbox" name="like[read]" title="阅读" value="read" <c:if
                                    test="${USER.hobbies.contains('read')}"> checked="checked"</c:if>/>
                            <input type="checkbox" name="like[daze]" title="发呆" value="daze" <c:if
                                    test="${USER.hobbies.contains('daze')}"> checked="checked"</c:if>/>
                            <input type="checkbox" name="like[food]" title="美食" value="food" <c:if
                                    test="${USER.hobbies.contains('food')}"> checked="checked"</c:if>/>
                            <input type="checkbox" name="like[animals]" title="动物" value="animals" <c:if
                                    test="${USER.hobbies.contains('animals')}"> checked="checked"</c:if>/>
                            <input type="checkbox" name="like[travel]" title="旅游" value="travel" <c:if
                                    test="${USER.hobbies.contains('travel')}"> checked="checked"</c:if>/>
                            <input type="checkbox" name="like[music]" title="音乐" value="music" <c:if
                                    test="${USER.hobbies.contains('music')}"> checked="checked"</c:if>/>
                            <input type="checkbox" name="like[sports]" title="运动" value="sports" <c:if
                                    test="${USER.hobbies.contains('sports')}"> checked="checked"</c:if>/>
                            <input type="checkbox" name="like[science]" title="科技" value="science" <c:if
                                    test="${USER.hobbies.contains('science')}"> checked="checked"</c:if>/>
                            <input type="checkbox" name="like[car]" title="汽车" value="car" <c:if
                                    test="${USER.hobbies.contains('car')}"> checked="checked"</c:if>/>
                            <input type="checkbox" name="like[fashion]" title="时尚" value="fashion" <c:if
                                    test="${USER.hobbies.contains('fashion')}"> checked="checked"</c:if>/>
                            <input type="checkbox" name="like[camera]" title="摄影" value="camera" <c:if
                                    test="${USER.hobbies.contains('camera')}"> checked="checked"</c:if>/>
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">个性签名：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="person_word" id="person_word" lay-verify="required"
                               placeholder="20个字以内" autocomplete="off" class="layui-input"
                               value="${USER.personal_word}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">密保一问：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="questionone" id="questionone" lay-verify="required"
                               placeholder="用于找回密码" autocomplete="off" class="layui-input" value="${USER.question_one}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">一问答案：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="answerone" id="answerone" lay-verify="required"
                               placeholder="请填写" autocomplete="off" class="layui-input" value="${USER.answer_one}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">密保二问：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="questiontwo" id="questiontwo" lay-verify="required"
                               placeholder="自愿填写" autocomplete="off" class="layui-input" value="${USER.question_two}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">二问答案：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="answertwo" id="answertwo" lay-verify="required"
                               placeholder="自愿填写" autocomplete="off" class="layui-input" value="${USER.answer_two}">
                    </div>
                </div>
                <input type="submit" class="layui-btn layui-btn-warm" id="personal_submit" value="保存"/>
            </div>
        </div>
    </form>
</div>
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
            , url: 'https://httpbin.org/post' //改成您自己的上传接口
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
