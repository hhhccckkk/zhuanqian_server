<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="session.jsp" %>
<%@ taglib prefix="h" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'my.jsp' starting page</title>
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
body {
	font-size: 18px;
	font-style: normal;
	font-weight: normal;
	
}
.STYLE2 {color: #FFFFFF}
.STYLE3 {font-size: 18px}
.STYLE4 {font-size: 14px}
-->
    </style>
</head>
  
  <body  bgcolor="#FFFFFF">
  <div align="center">
  <center><font color="red"><h:actionerror/></font></center>
    <table width="388" border="1" cellpadding="0" cellspacing="0"  bordercolor="#00CCFF">
      <!--DWLayoutTable-->
      <tr>
        <td width="384" height="275" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <tr>
            <td width="46" height="30">&nbsp;</td>
            <td width="291">&nbsp;</td>
            <td width="47">&nbsp;</td>
          </tr>
          <tr>
            <td height="27"></td>
            <td     bgcolor="#0099FF"><div align="center" class="STYLE3 STYLE2" ><strong>我 的 信 息</strong></div></td>
            <td></td>
          </tr>
          <tr>
            <td height="18"></td>
            <td></td>
            <td></td>
          </tr>
          
          <tr>
            <td height="39"></td>
            <td   > 账号:&nbsp;&nbsp;              <h:property value="#session.admin.name"/></td>
            <td></td>
          </tr>
          
          

          
          
          <tr>
            <td height="41">&nbsp;</td>
            <td   >密码：
            <h:property value="#session.admin.password"/></td>
            <td >&nbsp;</td>
          </tr>
          <tr>
            <td height="42">&nbsp;</td>
            <td colspan="2"   ><span class="STYLE4">上次登录：</span><font size=5><h:property value="#session.admin.loginTime"/>
            </font></td>
          </tr>
          <tr>
            <td height="25"></td>
            <td>&nbsp;</td>
            <td >&nbsp;</td>
          </tr>
          
          
          
          
          
          
        </table></td>
      </tr>
    </table>
  </div>
  </body>
</html>
