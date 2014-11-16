<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'borrow.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor=d3eaef>
  <h1>仪器借出界面</h1>
  <form action="borrow.action" method="post">
  <table>
  <tr>
  <td>
  	请输入要借出的设备：
  	</td>
  <td><input type="text" name="name"></td>
  </tr>
  <tr>
  <td>
  		请输入借出数量：
  </td>
  <td><input type="text" name="number1"></td>
  </tr>
  <tr><td><input type="submit"  name="submit" value="提交"></td></tr>
  </table>
  </form>
  </body>
</html>
