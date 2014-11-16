<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>

<title>left.jsp</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE3 {
	font-size: 12px;
	color: #435255;
}
.STYLE4 {font-size: 12px}
.STYLE5 {font-size: 12px; font-weight: bold; }
-->
</style></head>
<body bgcolor=d3eaef>

<table width="147px" height="470px" border="0" align="center" cellpadding="0" cellspacing="0">
<%-- <tr>
 <td width="83%"><div align="center" class="STYLE5"><a href="info.action?username=<s:property value="username" />">用户信息</a></div></td>
 </tr> --%>
 <!-- <tr>
 <td width="83%"><div align="center" class="STYLE5"><a href="equipment/classify.jsp">设备分类</a></div></td>
 </tr> -->
 <tr>
 <td width="83%"><div align="center" class="STYLE5"><a href="list.action" target="right">设备列表</a></div></td>
 </tr>
 <tr>
 <td width="83%"><div align="center" class="STYLE5"><a href="equipment/equipadd.jsp" target="right">设备增加</a></div></td>
 </tr>
 <tr>
 <td width="83%"><div align="center" class="STYLE5"><a href="equipment/query.jsp"target="right">设备查询</a></div></td>
 </tr>
 <tr>
 <td width="83%"><div align="center" class="STYLE5"><a href="equipment/borrow.jsp"target="right">设备借出</a></div></td>
 </tr>
 <tr>
 <td width="83%"><div align="center" class="STYLE5"><a href="equipment/delete.jsp"target="right">设备报废</a></div></td>
 </tr>
</table>
</body>
</html>
