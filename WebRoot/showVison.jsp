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
    
    <title>My JSP 'addVison.jsp' starting page</title>
    
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
    <form action="updateVison" method="post">
  <div align="center">
    <table width="614" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="64" height="53">&nbsp;</td>
        <td width="105">&nbsp;</td>
        <td width="68">&nbsp;</td>
        <td width="155">&nbsp;</td>
        <td width="206">&nbsp;</td>
        <td width="16">&nbsp;</td>
      </tr>
      <tr>
        <td height="26">&nbsp;</td>
        <td >类容：<input name="info.id" type="hidden" value="1"/></td>
        <td colspan="3" rowspan="2" valign="top"><label>
          <textarea name="info.content" cols="48" rows="11"><h:property value="info.content"/></textarea>
        </label></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="142">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="31">&nbsp;</td>
        <td >下载地址：</td>
        <td colspan="3" ><input name="info.downurl" type="text" value="<h:property value="info.downurl"/>"/></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="29">&nbsp;</td>
        <td >版本：</td>
        <td colspan="3" valign="top"><input name="info.version" type="text" value="<h:property value="info.version"/>"/></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="56">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="44">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td ><input type="submit" name="Submit" value="修改" style="background:
			  #0099FF; color:#FFFFFF; border-color:#0099FF"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="42">&nbsp;</td>
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
