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
  <table align="center" border="1" style="width:50%;">
  <tr>
  <td>设备名称:</td>
  <td>
  <input type="text" name="name" value=<s:property value="Equipment.name" />>
  </td>
  </tr>
  <tr>
  <td>设备型号:</td>
  <td>
  <input type="text" name="model" value=<s:property value="Equipment.model" />>
  </td>
  </tr>
  <tr>
  <td>设备规格:</td>
  <td>
	<input type="text" name="spec" value=<s:property value="Equipment.spec" />>  
  </td>
  </tr>
  <tr>
  <td>设备价格：</td>
  <td>
  <input type="text" name="price" value=<s:property value="Equipment.price" />>  
  </td>
  </tr>
  <tr>
  <td>厂商：</td>
  <td><input type="text" name="vender" value=<s:property value="Equipment.vender" />></td>
  </tr>
  <tr>
  <td>出厂号：</td>
  <td>
  <input type="text" name="serialnumber" value=<s:property value="Equipment.serialnumber" />>
  </td>
  </tr>
  <tr>
  <td>购置日期：</td>
  <td>
  <select name="buyyear" style="width:65px; height:17px; background-color:white; border:solid 1px #153966; font-size:12px; color:black; ">
   <option value="2005年">
   	2005年</option>
   	<option value="2006年">
   	2006年</option>
   	<option value="2007年">
   	2007年</option>
   	<option value="2008年">
   	2008年</option>
   	<option value="2009年">
   	2009年</option>
   <option value="2010年">
   	2010年</option>
   	<option value="2011年">
   	2011年</option>
   	<option value="2012年">
   	2012年</option>
   	<option value="2013年">
   	2013年</option>
   	<option value="2014年">
   	2014年</option>
   	</select>
   	 <select name="buymonth" style="width:50px; height:17px; background-color:white; border:solid 1px #153966; font-size:12px; color:black; ">
   <option value="1月">
   	1月</option>
   	<option value="2月">
   	2月</option>
   	<option value="3月">
   	3月</option>
   	<option value="4月">
   	4月</option>
   	<option value="5月">
   	5月</option>
   	<option value="6月">
   	6月</option>
   	<option value="7月">
   	7月</option>
   	<option value="8月">
   	8月</option>
   	<option value="9月">
   	9月</option>
   	<option value="10月">
   	10月</option>	
   	<option value="11月">
   	11月</option>
   	<option value="12月">
   	12月</option>
   	</select>
  </td>
  </tr>
  <tr>
  <td>出厂日期：</td>
  <td>
  <select name="outyear" style="width:65px; height:17px; background-color:white; border:solid 1px #153966; font-size:12px; color:black; ">
   <option value="2005年">
   	2005年</option>
   	<option value="2006年">
   	2006年</option>
   	<option value="2007年">
   	2007年</option>
   	<option value="2008年">
   	2008年</option>
   	<option value="2009年">
   	2009年</option>
   <option value="2010年">
   	2010年</option>
   	<option value="2011年">
   	2011年</option>
   	<option value="2012年">
   	2012年</option>
   	<option value="2013年">
   	2013年</option>
   	<option value="2014年">
   	2014年</option>
   	</select>
   	 <select name="outmonth" style="width:50px; height:17px; background-color:white; border:solid 1px #153966; font-size:12px; color:black; ">
   <option value="1月">
   	1月</option>
   	<option value="2月">
   	2月</option>
   	<option value="3月">
   	3月</option>
   	<option value="4月">
   	4月</option>
   	<option value="5月">
   	5月</option>
   	<option value="6月">
   	6月</option>
   	<option value="7月">
   	7月</option>
   	<option value="8月">
   	8月</option>
   	<option value="9月">
   	9月</option>
   	<option value="10月">
   	10月</option>	
   	<option value="11月">
   	11月</option>
   	<option value="12月">
   	12月</option>
   	</select>
  </td>
  </tr>
  <tr>
  <td>存放位置：</td>
  <td><input type="text" name="location" value=<s:property value="Equipment.location" />></td>
  </tr>
  <tr>
  <td>
  <input type="submit" name="submit" value="编辑" style="width:50px; height:25px; background-color:white;border:solid 1px #153966;font-size:12px; color:black;">
  <input type="reset" name="reset" value="重置" style="width:50px; height:25px; background-color:white; border:solid 1px #153966; font-size:12px; color:black;">
  </td>
  </tr>
  </table>
  </form>
  </body>
</html>
