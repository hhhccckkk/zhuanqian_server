<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="h" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showOneUser.jsp' starting page</title>
    
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
  <center><font color="red"><h:actionerror/></font>
 <h:fielderror cssStyle="color:red;font-size:14px" ></h:fielderror>
</center>
   <form action="updateKind" method="post" >
  <div align="center"><br>
    <table width="890" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="169" height="107">&nbsp;</td>
        <td width="127">&nbsp;</td>
        <td width="135">&nbsp;</td>
        <td width="34">&nbsp;</td>
        <td width="28">&nbsp;</td>
        <td width="19">&nbsp;</td>
        <td width="378">&nbsp;</td>
      </tr>
      <tr>
        <td height="33">&nbsp;</td>
        <td >id：</td>
        <td colspan="4" ><input name="kind.id" type="hidden" size="18" value="<h:property value="kind.id"/>"><h:property value="kind.id"/></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="28">&nbsp;</td>
        <td >类容：</td>
        <td colspan="2" ><input name="kind.content" type="text" size="18" value="<h:property value="kind.content"/>"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="28">&nbsp;</td>
        <td >是否正常</td>
        <td colspan="2" ><input name="kind.isok" type="text" size="18" value="<h:property value="kind.isok"/>"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="28">&nbsp;</td>
        <td >下载数量</td>
        <td colspan="2" ><input name="kind.num" type="text" size="18" value="<h:property value="kind.num"/>"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="55">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="31">&nbsp;</td>
        <td>&nbsp;</td>
        <td ><input type="submit" name="Submit" value="修改" style="background:
			  #0099FF; color:#FFFFFF; border-color:#0099FF"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="105">&nbsp;</td>
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
