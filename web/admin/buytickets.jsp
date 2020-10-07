<%--
  Created by IntelliJ IDEA.
  User: 67463
  Date: 2020/10/7
  Time: 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购票</title>
    <link rel="stylesheet" type="text/css" href="../css/buytickets.css">
</head>
<body>
<div>

</div>
<hr />
<p>电影名称：</p>
<hr />
<p>电影介绍：</p>
<hr />
<p>票价：</p>
<hr />
<table class="table_chooseseats" border="0" id="tab_chooseseats" >
    <tr>
        <caption>选择座位</caption>
    </tr>
    <tr>
        <th colspan="3">【第一排】</th>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">1</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">2</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">3</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">4</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">5</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">6</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">7</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">8</td>
    </tr>
    <tr>
        <th colspan="3">【第二排】</th>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">9</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">10</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">11</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">12</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">13</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">14</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">15</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">16</td>
    </tr>
    <tr>
        <th colspan="3">【第三排】</th>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">17</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">18</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">19</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">20</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">21</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">22</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">23</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">24</td>
    </tr>
    <tr>
        <th colspan="3">【第四排】</th>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">25</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">26</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">27</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">28</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">29</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">30</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">31</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">32</td>
    </tr>
    <tr>
        <th colspan="3">【第五排】</th>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">33</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">34</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">35</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">36</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">37</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">38</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">39</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">40</td>
    </tr>
    <tr>
        <th colspan="3">【第六排】</th>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">41</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">42</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">43</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">44</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">45</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">46</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">47</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">48</td>
    </tr>
    <tr>
        <th colspan="3">【第七排】</th>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">49</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">50</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">51</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">52</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">53</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">54</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">55</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">56</td>
    </tr>
    <tr>
        <th colspan="3">【第八排】</th>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">57</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">58</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">59</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">60</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">61</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">62</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">63</td>
        <td class="call" onclick="change(this)" onmouseenter="mouseenter(this)" onmouseout="mouseout(this)">64</td>
    </tr>
</table>
<p>已选座位：</p>
<p id="choosed"></p>
<hr />
<p>已选票数：<span id="counttickets">0</span>票</p>
<hr />
<button align=center onclick="createorder()">生成订单</button>

<script>

    var x = new Array();
    var i = 0;

    function change(obj){
        var a = "";
        var b = obj.innerText;
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
            document.getElementById("choosed").innerHTML=a;
            document.getElementById("counttickets").innerHTML=i;
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
            document.getElementById("choosed").innerHTML=a;
            document.getElementById("counttickets").innerText=i;

            /*if(a == ""){
                document.getElementById("choosed").innerHTML=a+b;
            }else{
                document.getElementById("choosed").innerHTML=a+","+b;
            }*/
        }
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

</script>
</body>
</html>
