<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>homepage.jsp</title>
<style type="text/css">
<!--
a:link {
 text-decoration: none;
}
a:visited {
 text-decoration: underline;
 color:black;
}
a:hover {
 text-decoration: underline;
}
a:active {
 text-decoration: underline;
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {
	font-size: 12px;
	color:black;
}
.STYLE5 {font-size: 12}
.STYLE6 {font-size: 40}
.STYLE7 {font-size: 12px; color: black; }
-->
</style></head>

<body bgcolor="white">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="57" background="images/main_03.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="378" height="57" background="images/main_01.gif">&nbsp;</td>
        <td>&nbsp;</td>
        <td width="281" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="33" height="27"><img src="images/main_05.gif" width="33" height="27" /></td>
            <td width="248" background="images/main_06.gif"><table width="225" border="0" align="center" cellpadding="0" cellspacing="0">
           <!--    <tr>
                <td height="17"><div align="right"><img src="images/pass.gif" width="69" height="17" /></div></td>
                <td><div align="right"><img src="images/user.gif" width="69" height="17" /></div></td>
                <td><div align="right"><img src="images/quit.gif" width="69" height="17" /></div></td>
              </tr> -->
              <td hight="17"><div align="right"><a href="regist.jsp"><font size=2>注册</font></a></td>
              <td hight="17"><div align="right"><a href="login.jsp"><font size=2>登录</font></a></td>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="40" background="images/main_10.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="194" height="40" background="images/main_07.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="21"><img src="images/main_13.gif" width="19" height="14" /></td>
            <td width="35" class="STYLE7"><div align="center">首页</div></td>
            <td width="21" class="STYLE7"><img src="images/main_15.gif" width="19" height="14" /></td>
            <td width="35" class="STYLE7"><div align="center">后退</div></td>
            <td width="21" class="STYLE7"><img src="images/main_17.gif" width="19" height="14" /></td>
            <td width="35" class="STYLE7"><div align="center">前进</div></td>
            <td width="21" class="STYLE7"><img src="images/main_19.gif" width="19" height="14" /></td>
            <td width="35" class="STYLE7"><div align="center">刷新</div></td>
            <td width="21" class="STYLE7"><img src="images/main_21.gif" width="19" height="14" /></td>
            <td width="35" class="STYLE7"><div align="center">帮助</div></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td width="248" background="images/main_11.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="16%"><span class="STYLE5"></span></td>
            <td width="75%"><div align="center"><span class="STYLE7">开发商：哈尔滨工业大学</span></div></td>
            <td width="9%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
	 <table height="80px" align="center">
    	<tr height="80px">
    		<td rowspan="2"><img src="images/logo.jpg"/></img></td>
    		<!-- <td width="120"><a href="http://www.baidu.com">
    			<font size=5 color=black face="楷体">设备管理</font>
    			</a>
    		</td> -->
    		<td width="120"><a href="http://www.baidu.com"><font size= 5 color=black face="楷体">导航</font></a></td>
    		<td width="120"><a href="http://news.baidu.com/"><font size= 5 color=black face="楷体">新闻</font></a></td>
    		<td width="120"><a href="http://v.baidu.com/"><font size= 5 color=black face="楷体">视频</font></a></td>
    		<td width="120"><a href="http://image.baidu.com/"><font size= 5 color=black face="楷体">图片</font></a></td>
    		<td width="120"><a href="http://wenku.baidu.com/"><font size= 5 color=black face="楷体">资料</font></a></td>
    	</tr>
    </table>
   <!--   <marquee scrollamount ="5"  width ="100%" height ="30%" direction ="left" scrolldelay ="2"
	behavior ="scroll" loop ="-1" class="STYLE6">
	<a href="login.jsp">WE设备管理系统</a></marquee> -->
	<form action="query1.action" method="post">
	<table align="center">
	<tr><td borderColor="#000000"><input type="text" name="name" maxlength="150" size="100"></td></tr>
	<tr>
	<td border="1"><input type="submit" name="submit" value="查询设备"></td>
	</tr>
	</table>
	</form>
<!-- <table align="right">
<tr width="80%" border="1" bordercolor="green" hight="30%">
	<td>
	<tr>NEWS</tr>
	<tr></tr>
	</td>
	<td>
	<a href="www.baidu.com"><font size= 3 color=black face="楷体">库克为Apple Watch辩护:一天一充电是大势所趋</font></a>
	</td>
	<tr>
	<td>
	<a href="www.baidu.com"><font size= 3 color=black face="楷体">Apple Pay的第一周：故障，缺陷和一些愉悦的用户</font></a>
	</td>
	</tr>
	<tr>
	<td>
	<a href="www.baidu.com"><font size= 3 color=black face="楷体">重金加码大陆投资 富士康布局商贸领域</font></a>
	</td>
	</tr>
	<tr>
	<td>
	<a href="www.baidu.com"><font size= 3 color=black face="楷体">快用苹果助手解析：iPhone6该不该越狱？</font></a>
	</td>
	</tr>
	</table> -->
	<table align="center">
    	<tr>
    		<th>电脑资讯</th>
    		<th>家具资讯</th>
    		<th>仪器资讯</th>
    	</tr>
    	<tr>
    		<td><jsp:include page="info/computer.jsp"></jsp:include></td>
    		<td><jsp:include page="info/fornature.jsp"></jsp:include></td>
    		<td><jsp:include page="info/yiqi.jsp"></jsp:include></td>
    	</tr>
    </table>
   
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
	<table align="center"><tr>
	<td>留言板：<input type="text" name="message"><input type="submit" name="submit" value="提交"></td>
	</tr></table>
	</body>
</html>

