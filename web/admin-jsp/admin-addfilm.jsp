<%--
  Created by IntelliJ IDEA.
  User: 67463
  Date: 2020/10/15
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>影院管理</title>
    <link rel="icon" href="../image/icon_bear.svg" type="image/x-icon">
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../css/logo-icon.css">
    <link rel="stylesheet" href="../css/admin-addfilm.css">
    <script src="../js/jquery/jquery-3.2.1.js"></script>
    <style type="text/css">
        .warp {
            display: inline-block;
            vertical-align: bottom;
            position: relative;

        }

        .warp-content {
            border: 1px solid red;
            width: 150px;
            height: 150px;
            line-height: 150px;
            text-align: center;
        }

        .input {
            position: absolute;
            top: 0;
            left: 0;
            border: 1px solid red;
            width: 150px;
            height: 150px;
            opacity: 0;
            cursor: pointer;
        }

        .img {
            width: 300px;
            height: 300px;
            border: 1px solid red;
            margin-top: 50px;
            vertical-align: bottom;
        }
    </style>

</head>
<body>
<div class="layui-layout layui-layout-admin">
    <script type="text/javascript" src="../js/admin-navigation-head.js"></script>
    <script type="text/javascript" src="../js/admin-navigation-side-film.js"></script>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div class="admin_addfilm_maincontainer">
            <div class="fileBox">
                <div class="warp">
                    <div class="warp-content" >点击上传</div>
                    <input class="input" type="file" id="file" />
                </div>
                <img class="img" id="ip" src=""/>
                <button onclick=savesrc()>保存</button>
                <img class="img" id="ip2" src=""/>
            </div>


            <form class="layui-form" action="${pageContext.request.contextPath}/add_prefilm.action" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">影片海报</label>
                    <div class="layui-input-block" style="width: 500px;">
                        <input id="inputsrc" type="text" name="road" placeholder="海报路径" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">影片编号</label>
                        <div class="layui-input-block" style="width: 500px;">
                            <input id="input_filmid" type="text" name="input_pre_filmid" placeholder="请点击右侧生成按钮生成订单编号" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <input type="button" onclick="newGuid()" value="生成" style="padding: 2px 5px 2px 5px">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">影片名称</label>
                    <div class="layui-input-block" style="width: 500px;">
                        <input type="text" name="p_name" placeholder="请输入影片名称" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">类型</label>
                    <div class="layui-input-block" style="width: 600px;">
                        <input type="checkbox" name="like[love]" title="爱情" value="爱情">
                        <input type="checkbox" name="like[comedy]" title="喜剧" value="喜剧">
                        <input type="checkbox" name="like[animation]" title="动画" value="动画">
                        <input type="checkbox" name="like[story]" title="剧情" value="剧情">
                        <input type="checkbox" name="like[panic]" title="惊悚" value="惊悚">
                        <input type="checkbox" name="like[science]" title="科幻" value="科幻">
                        <input type="checkbox" name="like[suspense]" title="悬疑" value="悬疑">
                        <input type="checkbox" name="like[crime]" title="犯罪" value="犯罪">
                        <input type="checkbox" name="like[adventure]" title="冒险" value="冒险">
                        <input type="checkbox" name="like[war]" title="战争" value="战争">
                        <input type="checkbox" name="like[family]" title="家庭" value="家庭">
                        <input type="checkbox" name="like[swordsman]" title="武侠" value="武侠">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">时长</label>
                    <div class="layui-input-block" style="width: 500px;">
                        <input type="text" name="p_time" placeholder="请输入电影时长xxx（min）" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">导演</label>
                    <div class="layui-input-block" style="width: 500px;">
                        <input type="text" name="p_actor" placeholder="请输入影片导演" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">上映日期</label>
                        <div class="layui-input-inline">
                            <input type="text" class="layui-input" id="calendar" placeholder="yyyy-MM-dd" name="p_date">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">版本</label>
                    <div class="layui-input-block">
                        <input type="checkbox" name="like[2D]" title="2D" value="2D">
                        <input type="checkbox" name="like[3D]" title="3D" value="3D">
                        <input type="checkbox" name="like[2D MAX]" title="2D MAX" value="2D MAX">
                        <input type="checkbox" name="like[3D MAX]" title="3D MAX" value="3D MAX">
                    </div>
                </div>

                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">电影简介</label>
                    <div class="layui-input-block">
                        <label>
                            <input type="text" name="desc" placeholder="请输入电影介绍"  />
                        </label>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="submit" class="layui-btn" value="立即提交"/>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>

        </div>
        <div class="layui-footer">
            <!-- 底部固定区域 -->
        </div>
    </div>
</div>
<script src="../layui/layui.js" charset=""></script>
<script src="../js/jquery/jquery-3.2.1.js"></script>
<script>
    document.getElementById("lifilm").classList.add("layui-this");
    document.getElementById("ddaddfilm").classList.add("layui-this");

    var file = document.getElementById('file');
    var image = document.querySelector(".img");
    file.onchange = function() {
        var fileData = this.files[0];//获取到一个FileList对象中的第一个文件( File 对象),是我们上传的文件
        var pettern = /^image/;

        console.info(fileData.type)

        if (!pettern.test(fileData.type)) {
            alert("图片格式不正确");
            return;
        }
        var reader = new FileReader();
        reader.readAsDataURL(fileData);//异步读取文件内容，结果用data:url的字符串形式表示
        /*当读取操作成功完成时调用*/
        reader.onload = function(e) {
            console.log(e); //查看对象
            console.log(this.result);//要的数据 这里的this指向FileReader（）对象的实例reader
            image.setAttribute("src", this.result)
        }
    }

    function savesrc(){
        var src1 = document.getElementById("ip").src;
        alert(src1);
        var ip2 = document.getElementById("ip2");
        $("#inputsrc").attr("value",src1);
        ip2.setAttribute("src", src1);
    }


    function newGuid(){
        var guid = "";
        for (var i = 1; i <= 12; i++){
            var n = Math.floor(Math.random()*16.0).toString(16);
            guid += n;
        }
        // document.getElementById("input_filmid").innerHTML = guid;
        $("#input_filmid").attr("value",guid);
    }


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

</script>
</body>
</html>