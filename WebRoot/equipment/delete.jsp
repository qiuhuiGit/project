<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'delete.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <h2 align="center">删除设备</h2>
  <body bgcolor=d3eaef>
    <form action="delete.action" method="post">
    <table align="center" border="1" width="50%">
    <tr>
    <td>请输入要删除的设备：</td>
    <td>
    <input type="text" name="name">
    </td>
    </tr>
    <tr><td><input type="submit" name="submit" value="删除"></td></tr>
    </table>
     </form>
  </body>
</html>
