$(function (){
    initTable();
})

//初始化表格
function initTable(){

    for (var i = 1; i <= 16; i++){
        //创建行
        var tr = $("<tr></tr>")
        //创建单元格
        var td0 = $("<th colspan=‘3’>【第"+i+"排】</th>")
        tr.append(td0);
        //将单元格追加到tr
        for (var j = 1; j <= 20; j++){
            var td = $("<td class='call' onclick='change(this)' onmouseenter='mouseenter(this)' onmouseout='mouseout(this)' id='"+i+"排"+j+"座'></td>")
            tr.append(td);
        }
        //将行元素追加到Tbody
        var tbody = $("#tb1")
        tbody.append(tr);
    }
    var alj = j/4;
    var tr0 = $("<tr></tr>")
    var tr1 = $("<tr></tr>")
    var tr2 = $("<tr></tr>")

    var tda0 = $("<td></td>")
    var tda1 = $("<td></td>")
    var tda2 = $("<td></td>")

    var tdb = $("<td colspan="+j+" style='background: gainsboro'><hr></td>")
    var tdc = $("<td colspan="+j+" align='center' style='padding-bottom: 20px'>屏幕中央</td>")

    var tdd = $("<td class='call'></td>")
    var tde = $("<td colspan="+alj+">可选座位</td>")
    var tdf = $("<td style='background: red'></td>")
    var tdg = $("<td colspan="+alj+">已售座位</td>")
    var tdh = $("<td style='background: darkseagreen'></td>")
    var tdi = $("<td colspan="+alj+">已选座位</td>")

    tr0.append(tda0).append(tdd).append(tde).append(tdf).append(tdg).append(tdh).append(tdi);
    tr1.append(tda1).append(tdb);
    tr2.append(tda2).append(tdc);
    var thead = $("#th1")
    thead.append(tr0).append(tr1).append(tr2);
}

var x = new Array();
var i = 0;

function change(obj){
    var a = "";
    var b = obj.id;
    var j = 0;
    if(obj.style.background == "darkseagreen"){
        obj.style.background = "#FFFFFF";
        for(j=0; j<=i; j++){
            if(x[j] == b){
                x.splice(j, 1);
                i--;
                continue;
            }else if(!x[j]){
                continue;
            }else{
                if(a == ""){
                    a=a+x[j];
                }else{
                    a=a+","+x[j];
                }
            }
        }
        /*for(j=0; j<=i; j++){
            if(x[j] == undefined){
                continue;
            }
            if(a == ""){
                a=a+x[j];
            }else{
                a=a+","+x[j];
            }
        }*/
        // document.getElementById("choosed").innerHTML=a;
        // document.getElementById("counttickets").innerHTML=i;
    }else{

        if (i+1 > 6){
            alert("每位用户至多选择6个座位！");
        }else {
            obj.style.background = "darkseagreen";
            x[i] = b;
            i++;

            for(j=0; j<=i; j++){
                if(!x[j]){
                    continue;
                }else if(a == ""){
                    a=a+x[j];
                }else{
                    a=a+","+x[j];
                }
            }
        }
        /*if(a == ""){
            document.getElementById("choosed").innerHTML=a+b;
        }else{
            document.getElementById("choosed").innerHTML=a+","+b;
        }*/
    }
    document.getElementById("choosed").innerHTML=a;
    document.getElementById("counttickets").innerText=i;

    var totalprice = (i*100)*(37.9*100)/10000;
    document.getElementById("total_price").innerText=totalprice;

}
function mouseenter(obj){
    if(obj.style.background == "darkseagreen"){
        obj.style.background = "darkseagreen";
    }else{
        obj.style.background = "#FAC205";
    }
}
function mouseout(obj){
    if(obj.style.background == "darkseagreen"){
        obj.style.background = "darkseagreen";
    }else{
        obj.style.background = "#FFFFFF";
    }
}

function createorder(obj){
    if (i == 0){
        alert("请选择至少一个座位！");
    }else {
        window.location.href="orderinfo.html";
    }
}
