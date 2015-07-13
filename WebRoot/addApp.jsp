<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'appApp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <form action="addApp" method="post">
  <div align="center"><br>

    <table width="926" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="138" height="90">增加广告</td>
      </tr>
      <tr>
        <td height="35">&nbsp;</td>
        <td colspan="2" >名字：</td>
        <td colspan="2" ><input type="text" name="app.name"/></td>
        <td>&nbsp;</td>
      </tr>
       <tr>
        <td height="42">&nbsp;</td>
        <td colspan="2" >启动activity：</td>
        <td colspan="2" ><input type="text" name="app.rk"/></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="35">&nbsp;</td>
        <td colspan="2" >包名：</td>
        <td colspan="2" ><input type="text" name="app.baoming"/></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="39">&nbsp;</td>
        <td colspan="2" >下载地址：</td>
        <td colspan="2" ><input type="text" name="app.downurl"/></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="42">&nbsp;</td>
        <td colspan="2" >图标地址：</td>
        <td colspan="2" ><input type="text" name="app.image1"/></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="39">&nbsp;</td>
        <td colspan="2" >图片地址：</td>
        <td colspan="2" valign="top"><input type="text" name="app.image2"/></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="46">&nbsp;</td>
        <td colspan="2" >价格：</td>
        <td colspan="2" ><input type="text" name="app.price1"/></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="39">&nbsp;</td>
        <td colspan="2" >签到：</td>
        <td colspan="2" ><input type="text" name="app.price2"/></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="42">&nbsp;</td>
        <td colspan="2" >介绍：</td>
        <td colspan="2" ><input type="text" name="app.neirong"/></td>
        <td>&nbsp;</td>
      </tr>
       <tr>
        <td height="42">&nbsp;</td>
        <td colspan="2" >是否注册:</td>
        <td colspan="2" ><input type="text" name="app.iszhuce"/></td>
        <td>&nbsp;</td>
      </tr>
       <tr>
        <td height="42">&nbsp;</td>
        <td colspan="2" >注册activity：</td>
        <td colspan="2" ><input type="text" name="app.activity"/></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="23">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="35">&nbsp;</td>
        <td>&nbsp;</td>
        <td ><input type="submit" name="Submit" value="增加" style="background:
			  #0099FF; color:#FFFFFF; border-color:#0099FF"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="36">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      </table>
  </div>
  </form>
  </body>
</html>
