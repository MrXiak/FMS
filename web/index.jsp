<%--
  Created by IntelliJ IDEA.
  User: 夏康
  Date: 2020/10/6
  Time: 23:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" type="text/css" href="layui/css/layui.css">
    <script src="layui/layui.js"></script>
  </head>
  <style>
    table{
      height: 100%;
      width: 100%;
    }
    table,td{
      border: 1px solid red;
      border-collapse: collapse;
      text-align: center;
    }
    #theader{
      height: 80px;
      width: 90%;
    }
  </style>
  <body>
  <table>
    <thead>
    <tr id="theader">
      <td><img src="../images/dog_eye.jpg">狗眼电影</td>
      <td>
        <select>
          <option value="location">地区选择</option>
          <option value="rugao">如皋</option>
          <option value="beijing">北京</option>
          <option value="shanghai">上海</option>
        </select>
      </td>
      <td><a href="#">首页</a></td>
      <td>
        <select>
          <option value="pic"><img src="../images/face/64.gif"></option>/
          <option value="login">登录</option>
        </select>
      </td>
      <td>备用</td>
    </tr>
    </thead>
    <tbody>
    <tr>
      <td></td>
    </tr>
    </tbody>
    <tfoot class="foot">

    </tfoot>
  </table>

  </body>
</html>
