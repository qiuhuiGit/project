<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>we设备管理系统</title>
</head>

<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
<jsp:include page="top.jsp"/>
<jsp:include page="center.jsp"/>
<jsp:include page="down.jsp"/>
</table>
</body>

</html>

