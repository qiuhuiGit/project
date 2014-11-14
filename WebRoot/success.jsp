<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'homepage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <h1 align="center">WE设备管理系统</h1>
  <body>
  <table align="right">
  <tr>
  <td>
	  欢迎你,
  <s:property value="username" />!
  </td>
  </tr>
  </table>
  <table align="left">
  <tr>
  <th><h2>设备管理</h2></th>
  </tr>
  <tr>
  <td><a href="equipment/query.jsp">查询设备</a>
  </td>
  </tr>
  <tr><td>
  <a href="equipment/equipadd.jsp">增加设备</a>
  </td>
  </tr>
  </table>
  </body>
  </html>