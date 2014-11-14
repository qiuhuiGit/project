<%@taglib uri="/struts-tags" prefix="s"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'success.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body bgcolor="d3eaef">
	<table align="center" border="1" style="width:80%;">
		<tr>
			<th colspan="9" align="center">用户信息</th>
		</tr>
		<tr>
			<td>用户名</td>
			<td>性别</td>
			<td>国籍</td>
			<td>邮箱</td>
		 </tr>
			<tr>
				<td><s:property value="user.username" /></td>
				<td><s:property value="user.sex" /></td>
				<td><s:property value="user.country" /></td>
				<td><s:property value="user.email" /></td>
			</tr>
	</table>
  </body>
</html>