function validate(){
    var uid=document.getElementById("user_id");
    var upassword=document.getElementById("user_password");
    var conform_password=document.getElementById("confirm_password")
    if(uid.value===""){
        alert("请输入账号哦！")
        uid.focus();
        return false;
    }
    if(upassword.value===""){
        alert("请输入密码哦！")
        upassword.focus();
        return false;
    }else if (upassword.value.length<6 || upassword.value.length>10) {
        alert("密码长度不符合要求，请输入6-10位密码!");
        upassword.focus();
        return false;
    }
    if(conform_password.value===""){
        alert("请确认密码哦！")
        conform_password.focus();
        return false;
    }
    if(conform_password.value !== upassword.value){
        alert("两次密码不一致");
        conform_password.focus();
        return false;
    }
    return true;
}