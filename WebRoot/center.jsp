<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow:hidden;
}
-->
</style></head>

<body>
<table width="100%" height="470px" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="8px" height="100%"bgcolor="#353c44">&nbsp;</td>
    <td width="147px" valign="top"><iframe height="100%" width="100%" frameborder="0" src="left.jsp" name="left"></iframe></td>
    <td width="10px" bgcolor="#add2da">&nbsp;</td>
    <td valign="top" height="100%"><iframe height="100%" width="100%"  frameborder="0" src="right.jsp" name="right"></iframe></td>
    <td width="8px" bgcolor="#353c44">&nbsp;</td>
  </tr>
</table>
</body>
</html>
