<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <h1 align="center"><font size=6 color=white face="楷体">用户注册界面</font></h1>
  <body  style="background:url('image/back2.jpg') no-repeat;">
  <form action="regist.action" method="post">
    <table align="center" width="40%">
    <tr>
    <td>
  	  用户名：
    </td>
    <td><input type="text" name="username" style="width:150px; height:17px; background-color:white; border:solid 1px #153966; font-size:12px; color:#283439; "></td>
    </tr>
    <tr>
    <td>密码：</td>
    <td>
    <input type="password" name="password" style="width:150px; height:17px; background-color:white; border:solid 1px #153966; font-size:12px; color:#283439; ">
    </td>
    </tr>
    <tr>
    <td>
    	性别：
    </td>
    <td>
   <select name="sex" style="width:50px; height:17px; background-color:white; border:solid 1px #153966; font-size:12px; color:#283439; ">
   <option value="男">
   	男</option>
   	<option value="女">
   	女</option>
   	<option value="其他">
   	其他</option>
   	</select>
    </td>
    </tr>
    <tr>
    <td>国籍：</td>
    <td>
	<input type="text" name="country" style="width:150px; height:17px; background-color:white; border:solid 1px #153966; font-size:12px; color:#283439; ">    
    </td>
    </tr>
    <tr>
    <td>邮箱：</td>
    <td>
	<input type="text" name="email"style="width:150px; height:17px; background-color:white; border:solid 1px #153966; font-size:12px; color:#283439; ">    
    </td>
    </tr>
    <tr>
    <td>
    <input type="submit" name="submit" value="注册"style="width:50px; height:17px; background-color:white; border:solid 1px #153966; font-size:12px; color:#283439; ">
    <input type="reset" name="reset" value="重置" style="width:50px; height:17px; background-color:white; border:solid 1px #153966; font-size:12px; color:#283439; ">
    </td>
    </tr>
    </table>
    </form>
  </body>
</html>
