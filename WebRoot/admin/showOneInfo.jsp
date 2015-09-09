<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="h" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showOneInfo.jsp' starting page</title>
    
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
  <form action="updateInfo" method="post">
  <div align="center"><br>
    <table width="561" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="72" height="61">&nbsp;</td>
        <td width="84">&nbsp;</td>
        <td width="186">&nbsp;</td>
        <td width="219">&nbsp;</td>
      </tr>
      <tr>
        <td height="30">&nbsp;</td>
        <td >更新类容：<input name="info.id" value="<h:property value="info.id"/>" type="hidden"/></td>
        <td colspan="2" rowspan="2" valign="top"><label>
          <textarea name="info.content" cols="55" rows="12"
          />
          <h:property value="info.content"/>
          </textarea>
        </label></td>
      </tr>
      <tr>
        <td height="175">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="39">&nbsp;</td>
        <td >下载地址：</td>
        <td colspan="2" ><input name="info.url" value="<h:property value="info.url"/>" type="text"/></td>
      </tr>
      <tr>
        <td height="39">&nbsp;</td>
        <td >版本：</td>
        <td ><input name="info.vison" value="<h:property value="info.vison"/>" type="text"/></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="32">&nbsp;</td>
        <td ><input type="submit" name="Submit" value="修改" style="background:
			  #0099FF; color:#FFFFFF; border-color:#0099FF"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="55">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      </table>
  </div>
  </form>
  </body>
</html>
