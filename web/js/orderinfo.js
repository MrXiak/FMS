var i = 0;
var m = 0;
var s = 0;
var time = document.getElementById("orderid").innerHTML;
var nowtime = new Date(time);
nowtime.setMinutes(nowtime.getMinutes()+15);

function FreshTime() {
    // if (i == 0){
        var nowtime1 = new Date();
        var lefttime = parseInt((nowtime - nowtime1.getTime()) / 1000); // 剩余时间
        m = parseInt((lefttime / 60) % 60);	// 剩余分钟数
        s = parseInt(lefttime % 60);	// 剩余秒数
        i++;
    // }else{
    //     var nowtime2 = new Date(time);//当前时间
    //     var lefttime = parseInt((nowtime - nowtime2.getTime()) / 1000); // 剩余时间
    //     m = parseInt((lefttime / 60) % 60);	// 剩余分钟数
    //     s = parseInt(lefttime % 60);	// 剩余秒数
    // }

    document.getElementById("leftMinute").innerHTML = m;
    document.getElementById("leftSecond").innerHTML = s;

    if (lefttime < 0) {
        document.getElementById("leftTime").innerHTML = "订单已失效";
        document.getElementById("nopay").innerHTML = "已失效";
        alert("订单已超时！")
        clearInterval(sh);
        i = 0;
    }
}



