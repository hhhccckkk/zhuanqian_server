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
    
    <title>My JSP 'showOneShare.jsp' starting page</title>
    
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
  <form action="updateShare" method="post">
  <div align="center"><br>
    <table width="711" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="87" height="54">&nbsp;</td>
        <td width="90">&nbsp;</td>
        <td width="65">&nbsp;</td>
        <td width="137">&nbsp;</td>
        <td width="161">&nbsp;</td>
        <td width="119">&nbsp;</td>
        <td width="52">&nbsp;</td>
      </tr>
      <tr>
        <td height="29">&nbsp;</td>
        <td >内容:<input name="share.id" type="hidden" value="1"/></td>
        <td colspan="4" rowspan="2" valign="top"><label>
          <textarea name="share.content" cols="50" rows="10">
          <h:property value="share.content"/>
          </textarea>
        </label></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="115">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="37">&nbsp;</td>
        <td valign="top">图片地址：</td>
        <td colspan="3" valign="top"><input name="share.imageurl" type="text" value="<h:property value="share.imageurl"/>"/></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="34">&nbsp;</td>
        <td valign="top">下载地址：</td>
        <td colspan="3" valign="top">
        <input name="share.url"  type="text" value="<h:property value="share.url"/>"/>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="44">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="37">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td valign="top"><input type="submit" name="Submit" value="修改"  style="background:
			  #0099FF; color:#FFFFFF; border-color:#0099FF"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="54">&nbsp;</td>
        <td>&nbsp;</td>
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
