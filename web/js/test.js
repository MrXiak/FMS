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
