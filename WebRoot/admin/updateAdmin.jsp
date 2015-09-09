<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="session.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="h" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改账户</title>
    
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
table {
	font-family: "宋体";
	font-size: 12px;
	color: #0066CC;
}
.STYLE1 {
	font-size: 14px;
	color: #FFFFFF;
	font-weight: bold;
}
-->
    </style>
    <style   type= "text/css "> 
<!-- 
.FONT1   {
	font-family:   "新宋体";
font-color:
; 	font-size: 12px;
	color: #FF3366;
} 
--> 
    </style> 

    
</head>
  
  <body bgcolor="#FFFFFF">
   
  <div align="center">
  <CENTER><h:fielderror cssStyle="color:red;font-size:14px" ></h:fielderror></CENTER>
  <form action="updateAdmin" method="post">
    <table width="948" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="247" height="31">&nbsp;</td>
        <td width="346">&nbsp;</td>
        <td width="355"></td>
      </tr>
      <tr>
        <td height="30">&nbsp;</td>
        <td  bgcolor="#0099FF"><span class="STYLE1">&nbsp;修改账户:</span></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="151">&nbsp;</td>
        <td ><table width="100%" border="1" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <tr>
            <td width="342" height="38" >&nbsp;账号：
              <label>
              <input name="admin.name" type="text" size="25">
            * 6-12位字母数字 </label></td>
          </tr>
          <tr>
            <td height="41" >&nbsp;密码： 
              <label>
              <input name="admin.password" type="password" size="25">
            *6-12位字母数字</label></td>
          </tr>
         
          <tr>
            <td height="25" >
              <label>
               <input type="submit" name="Submit" value="提交" class="FONT1"
               style="color:#0066cc">
              </label>
             <label>
              <input name="Submit2" type="reset" value="重置" class="FONT1"
              style="color:#0066cc"
              >
                  </label></td>
          </tr>
          
          
          
        </table></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="186">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></form>
  </div>
  </body>
</html>
