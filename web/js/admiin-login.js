function alvalidate() {
    var number = document.getElementById("al_id");
    var password = document.getElementById("al_password");
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