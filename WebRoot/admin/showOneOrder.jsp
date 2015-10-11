<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="h" uri="/struts-tags" %>
<%@ include file="session.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showOneOrder.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    <style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
-->
    </style>
</head>
  
  <body>
  <form action="dealOrder" method="post">
  <div align="center"><br>
    <table width="824" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td height="40" colspan="3"   bgcolor="#0099CC" ><span class="STYLE1">订单详细</span></td>
        <td width="40">&nbsp;</td>
        <td width="60">&nbsp;</td>
        <td width="85">&nbsp;</td>
        <td width="45">&nbsp;</td>
        <td width="248">&nbsp;</td>
        <td width="102">&nbsp;</td>
        <td width="24">&nbsp;</td>
      </tr>
      <tr>
        <td width="146" height="22">&nbsp;</td>
        <td width="15">&nbsp;</td>
        <td width="59">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="45">&nbsp;</td>
        <td colspan="3" valign="top">订单ID：<input name="id" value="<h:property value="oneOrders.id"/>" type="hidden"/></td>
        <td colspan="2" valign="top"><h:property value="oneOrders.id"/></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="41">&nbsp;</td>
        <td colspan="3" valign="top">兑换：</td>
        <td colspan="5" valign="top"><h:property value="oneOrders.info"/></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="35">&nbsp;</td>
        <td colspan="3" valign="top">时间：</td>
        <td colspan="4" valign="top"><h:property value="oneOrders.time"/>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="36"></td>
        <td colspan="3" valign="top">状态：</td>
        <td colspan="3" valign="top"><h:property value="oneOrders.state"/></td>
        <td>&nbsp;</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td height="32"></td>
        <td colspan="3" valign="top">用户id：</td>
        <td colspan="3" valign="top"><a href="getOneUser?id=<h:property value="#u.id"/>"><h:property value="oneOrders.user.id"/></a></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td height="32"></td>
        <td colspan="3" valign="top">用户赚钱记录：</td>
        <td colspan="3" valign="top"><a href="getUserJiLu?page=1&id=<h:property value="#u.id"/>"><h:property value="oneOrders.user.nicheng"/></a></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td height="81"></td>
        <td>&nbsp;<input name="uid" value="<h:property value="#u.id"/>" type="hidden"/></td>
        <td>&nbsp;</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td height="35"></td>
        <td>&nbsp;</td>
        <td colspan="3" valign="top"><input type="submit" name="Submit" value="修改" style="background:
			  #0099FF; color:#FFFFFF; border-color:#0099FF"></td>
        <td>&nbsp;</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td height="137"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      </table>
  </div>
   </form>
  </body>
 
</html>
