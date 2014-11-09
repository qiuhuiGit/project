<%@taglib uri="/struts-tags" prefix="s"%><%@ page language="java"
	import="java.util.*" pageEncoding="UTF-8"%>
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

<body bgcolor=d3eaef>
	<table align="center" border="1" style="width:100%;">
		<tr>
			<th colspan="10" align="center">设备</th>
		
		</tr>
		<tr>
			<td>类型</td>
			<td>名称</td>
			<td>型号</td>
			<td>图片</td>
			<td>大小</td>
			<td>生产日期</td>
			<td>价格</td>
			<td>数量</td>
		 </tr>
			<tr>
				<td><s:property value="Equipment.type" /></td>
				<td><s:property value="Equipment.name" /></td>
				<td><s:property value="Equipment.model" /></td>
			     <td width="20%"><img src="<s:property value="Equipment.picture" />"></img></td>
				<td><s:property value="Equipment.size" /></td>
				<td><s:property value="Equipment.date" /></td>
				<td><s:property value="Equipment.price"/></td>
				<td><s:property value="Equipment.number"/></td>
			</tr>
	</table>
	<form action="homepage.jsp" method="post">
	<table>
	<tr><td><input type="submit" name="submit" value="返回主页"></td></tr>
	</table>
	</form>
	</body>
	</html>