<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="session.jsp" %>
<%@ taglib prefix="h" uri="/struts-tags" %>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>添加用户</title>
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
	font-size: 12px;
	color:#0066cc;
}
.STYLE1 {color: #000099}
-->
<!-- 
FONT1   {
	font-family:   "新宋体";
font-color:
; 	font-size: 12px;
	color: #FF3366;
} 
--> 
    </style>
 <script language="javascript" src="script/validation-framework.js" charset="GBK"></script>
</head>
  
  <body >
  <form action="addUserPC" method="post" >
  <div align="center">
  <center><font color="red"><h:actionerror/></font>
 <h:fielderror cssStyle="color:red;font-size:14px" ></h:fielderror></center>
    <table width="665" border="0" cellpadding="0" cellspacing="0" bordercolor="#0099FF">
      <!--DWLayoutTable-->
      <tr>
        <td width="653" height="3"></td>
        <td width="2"></td>
      </tr>
      <tr>
        <td height="399" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <tr>
            <td width="120" height="38">&nbsp;</td>
            <td width="370">&nbsp;</td>
            <td width="95">&nbsp;</td>
          </tr>
          <tr>
            <td height="174">&nbsp;</td>
            <td valign="top"><table width="100%" border="1" cellpadding="0" cellspacing="0" bordercolor="#8ECCEA">
              <!--DWLayoutTable-->
              <tr>
                <td width="439" height="32"   background="images/bg.png"><span class="STYLE1" >增加新用户</span><span class="STYLE2 STYLE1">&gt;&gt;</span></td>
                </tr>
              <tr>
                <td height="35"   >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mac：
                  <label>
                  <input name="user.mac" type="text" size="25" value="hckhck">
                  
                </tr>
             <tr>
                <td height="35"   >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;昵称：
                  <label>
                  <input name="user.nicheng" type="text" size="25" >
                </tr>
              <tr>
                <td height="40"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>
                  <input type="submit" name="Submit" value="提交" style="color:#0066cc"  >
                </label>&nbsp;
                  <label>
                  <input type="reset" name="Submit2" value="重置" style="color:#0066cc">
                  </label></td>
                </tr>
              
              
              
            </table></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="185">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          
        </table></td>
      <td></td>
      </tr>
    </table>
  </div>
  </form>
  </body>
</html>
