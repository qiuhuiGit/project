<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'query.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
 <h1 align ="center">设备查询页面</h1> 
  <body bgcolor=73CFF1>
   <form action="query.action" method="post">
   <table>
   <tr><td><h1>按设备名称查询</h1></td></tr>
   <tr>
   <td>
   请输入要查询的设备名称：
   </td>
   <td>
   <input type="text" name="name">
   </td>
   <td><input type="submit" name="submit" value="提交"></td>
   </tr>
   <tr><td><h1>按设备ID查询</h1></td></tr>
   <tr>
   <td>
   请输入要查询的设备ID：
   </td>
   <td>
   <input type="text" name="ID">
   </td>
   <td><input type="submit" name="submit" value="提交"></td>
   </tr>
   
    <tr><td><h1>按厂商查询</h1></td></tr>
   <tr>
   <td>
   请输入要查询的厂商：
   </td>
   <td>
   <input type="text" name="vender">
   </td>
   <td><input type="submit" name="submit" value="提交"></td>
   </tr>
   
   <tr><td><h1>按价格区间查询</h1></td></tr>
   </table>
   </form>
   <form action="price.action" method="post">
   <table>
   <tr>
   <td>
   请输入要查询的设备价格区间：
   </td>
   <td>
   从<input type="text" name="minprice" size="5">到<input type="text" name="maxprice"size="5">
   </td>
   <td><input type="submit" name="submit" value="提交"></td>
   </tr>
   </table>
   </form>
  </body>
</html>
