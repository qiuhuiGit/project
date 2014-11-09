<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'equipadd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <h2 align="center">设备增加页面</h2>
  <body style="background:url('images/regist1.jpg') no-repeat;">
  <form action="add.action" method="post">
  <table align="center" border="1" style="width:50%;">
  <tr>
  <td>
  	设备类型:
  </td>
  <td>
  <input type="text" name="type">
  </td>
  </tr>
  <tr>
  <td>设备名称:</td>
  <td>
  <input type="text" name="name">
  </td>
  </tr>
  <tr>
  <td>设备 型号:</td>
  <td>
  <input type="text" name="model">
  </td>
  </tr>
  <tr>
  <td>设备图片：</td>
  <td>
	<input type="file" name="picture">  
  </td>
  </tr>
  <tr>
  <td>设备大小：</td>
  <td>
  <input type="text" name="size">  
  </td>
  </tr>
  <tr>
  <td>出厂日期：</td>
  <td><input type="text" name="date"></td>
  </tr>
  <tr>
  <td>设备价格：</td>
  <td>
  <input type="text" name="price">
  </td>
  </tr>
  <tr>
  <td>设备数量：
  </td>
  <td><input type="text" name="number"></td>
  </tr>
  <tr>
  <td>
  <input type="submit" name="submit" value="增加">
  <input type="reset" name="reset" value="重置">
  </td>
  </tr>
  </table>
  </form>
  </body>
</html>
