// $(function () {
//     $("#login_submit").click(function () {
//         //获取页面的账号和密码
//         var uid = $("#user_id").val();
//         var upass = $("#user_password").val();
//         $.ajax({
//             url: "login.action",
//             date: {u_id: uid, u_pass: upass},//json格式的信息，{}json对象
//             type: "",
//             success: function (msg) {
//                 if (msg == 0) {
//                     //跳转
//                     Location.href = "./login_register/register.jsp"
//                 } else if (msg == 1) {
//                     alert("账号没有注册！")
//                 } else if (msg == 2) {
//                     alert("密码有误！")
//                 }
//             }
//
//         })
//     })
// })

function validate() {
    var number = document.getElementById("user_id");
    var password = document.getElementById("user_password");
    if (number.value === "") {
        alert("账号不能为空！");
        user_id.focus();
        return false;
    }
    if (password.value === "") {
        alert("密码不能为空！");
        user_password.focus();
        return false;
    }
    return true;
}
