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
    
    <title>My JSP 'equipedit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <h2 align="center">设备编辑页面</h2>
  <body style="background:url('images/regist1.jpg') no-repeat;">
  <form action="edit.action" method="post">
  <table align="center" border="1" style="width:50%;" bgColor="#ffffff">
  <tr>
  <td>
  	设备类型:
  </td>
  <td>
  <input type="text" name="type" value=<s:property value="Equipment.type" />>
  </td>
  </tr>
  <tr>
  <td>设备名称:</td>
  <td>
  <input type="text" name="name" value=<s:property value="Equipment.name" />>
  </td>
  </tr>
  <tr>
  <td>设备型号:</td>
  <td>
  <input type="text" name="model" readonly="readonly" value=<s:property value="Equipment.model" />>
  </td>
  </tr>
  <tr>
  <td>设备图片：</td>
  <td>
	<input type="text" name="picture" value=<s:property value="Equipment.picture" />>  
  </td>
  </tr>
  <tr>
  <td>设备大小：</td>
  <td>
  <input type="text" name="size" value=<s:property value="Equipment.size" />>  
  </td>
  </tr>
  <tr>
  <td>出厂日期：</td>
  <td><input type="text" name="date" value=<s:property value="Equipment.date" />></td>
  </tr>
  <tr>
  <td>设备价格：</td>
  <td>
  <input type="text" name="price" value=<s:property value="Equipment.price" />>
  </td>
  </tr>
  <tr>
  <td>设备数量：
  </td>
  <td><input type="text" name="number" value=<s:property value="Equipment.number" />>
  </td>
  </tr>
  <tr>
  <td>
  <input type="submit" name="submit" value="编辑">
  <input type="reset" name="reset" value="重置">
  </td>
  </tr>
  </table>
  </form>
  </body>
</html>
