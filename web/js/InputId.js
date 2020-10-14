function inputId() {
    var number = document.getElementById("user_id");
    if (number.value === "") {
        alert("账号不能为空！");
        user_id.focus();
        return false;
    }
    return true;
}
