function myInfo() {
    var usertel = document.getElementById("user_tel");
    var personword=document.getElementById("person_word")
    var q1=document.getElementById("questionone")
    var q2=document.getElementById("questiontwo")
    var a1=document.getElementById("answerone")
    var a2=document.getElementById("answertwo")
    if (usertel.value.length<11||usertel.value.length>11) {
        alert("手机号格式有误！");
        usertel.focus();
        return false;
    }
    if (personword.value.length>20) {
        alert("个性签名太长哦！");
        personword.focus();
        return false;
    }
    if (q1.value === "") {
        alert("密保问题不能为空！将用于找回密码与修改密码！");
        q1.focus();
        return false;
    }
    if (a1.value === "") {
        alert("请输入相应答案信息!");
        a1.focus();
        return false;
    }
    if (q2.value === "") {
        alert("密保问题不能为空！将用于找回密码与修改密码！");
        q2.focus();
        return false;
    }
    if (a2.value === "") {
        alert("请输入相应答案信息!");
        a2.focus();
        return false;
    }
    return true;
}