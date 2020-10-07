$(function (){
    initTable();
})

//初始化表格
function initTable(){
    for (var i = 1; i <= 8; i++){
        //创建行
        var tr = $("<tr></tr>")
        //创建单元格
        var td0 = $("<th colspan=‘3’>【第"+i+"排】</th>")
        var td1 = $("<td class='call' onclick='change(this)' onmouseenter='mouseenter(this)' onmouseout='mouseout(this)' id='"+i+"排1座'></td>")
        var td2 = $("<td class='call' onclick='change(this)' onmouseenter='mouseenter(this)' onmouseout='mouseout(this)' id='"+i+"排2座'></td>")
        var td3 = $("<td class='call' onclick='change(this)' onmouseenter='mouseenter(this)' onmouseout='mouseout(this)' id='"+i+"排3座'></td>")
        var td4 = $("<td class='call' onclick='change(this)' onmouseenter='mouseenter(this)' onmouseout='mouseout(this)' id='"+i+"排4座'></td>")
        var td5 = $("<td class='call' onclick='change(this)' onmouseenter='mouseenter(this)' onmouseout='mouseout(this)' id='"+i+"排5座'></td>")
        var td6 = $("<td class='call' onclick='change(this)' onmouseenter='mouseenter(this)' onmouseout='mouseout(this)' id='"+i+"排6座'></td>")
        //将单元格追加到tr
        tr.append(td0).append(td1).append(td2).append(td3).append(td4).append(td5).append(td6);
        //将行元素追加到Tbody
        var tbody = $("#tb1")
        tbody.append(tr);
    }
}

var x = new Array();
var i = 0;

function change(obj){
    var a = "";
    var b = obj.id;
    var j = 0;
    if(obj.style.background == "red"){
        obj.style.background = "#11EE96";
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
        obj.style.background = "red";

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
        /*if(a == ""){
            document.getElementById("choosed").innerHTML=a+b;
        }else{
            document.getElementById("choosed").innerHTML=a+","+b;
        }*/
    }
    document.getElementById("choosed").innerHTML=a;
    document.getElementById("counttickets").innerText=i;
}
function mouseenter(obj){
    if(obj.style.background == "red"){
        obj.style.background = "red";
    }else{
        obj.style.background = "#FAC205";
    }
}
function mouseout(obj){
    if(obj.style.background == "red"){
        obj.style.background = "red";
    }else{
        obj.style.background = "#11EE96";
    }
}

function createorder(){
    window.location.href="createorder.jsp";
}
