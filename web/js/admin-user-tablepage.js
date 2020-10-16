window.onload=function(){
    alert("onload");
}
function newGuid(){
    var guid = "";
    for (var i = 1; i <= 12; i++){
        var n = Math.floor(Math.random()*16.0).toString(16);
        guid += n;
    }
    return guid;
}

var a = "<%  %>"
var nowPage = 0, //当前页
    count = 10 //每页显示多少条消息
pageAll = 0; //总页数
var testDataList = []; //创建一个存放数据的数组
for (var m = 0; m < 53; m++) { //往数组里放入53条数据
    var filmid = newGuid();
    testDataList.push(``);
}
pageAll = (testDataList.length) / count; //计算总页数
var setTable = function () { //数据渲染表格
    var onePageData = []; //用来存放一页的数据
    /*
        i + nowPage * count 表示当前是第几条数据
        (nowPage + 1) * count 表示到下一条数据 之间 有几条数据  即当前页 的页尾数据的是第几条 不是最后一页的情况下都是五条
         var begin = (nowPage + 1) * count
         var end = i + nowPage * count)
         begin-end==5

         testDataList.length 表示所有数据个数

    */
    for (var i = 0;
         (i + nowPage * count < (nowPage + 1) * count) && i + nowPage * count < testDataList.length; i++) { //满足当前数据小于没到当前页的最后一条数据 ，并且当前数据没到最后一条数据
        {
            onePageData.push(testDataList[i + nowPage * count]);// 这个循环会循环五次  把五条数据放到列表里
        }
    }
    userBoxTab.querySelector('tbody').innerHTML = onePageData.join(''); //渲染当前页数据
}
setTable();
up.onclick = function () { //上一页
    if (nowPage == 0) //当前页数是第一页则返回
        return
    nowPage--;
    setTable();
}
down.onclick = function () {//下一页
    if (nowPage >= pageAll-1){
        return
    } //当前页数是最后一页则返回  这么写是因为总页数不一定是整数
    nowPage++;
    setTable();
    debugger
}
