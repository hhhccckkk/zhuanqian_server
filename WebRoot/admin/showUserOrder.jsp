<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="com.hck.money.util.FenYe" %>
<%@ include file="session.jsp" %>
<%@ taglib prefix="h" uri="/struts-tags" %>
<%
request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>显示信息</title>
<link href="images/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="javascript/jquery.min.js"></script>

<style type="text/css">
body {
	background:#FFF
}
</style>
</head>

<body>
<center><font color="red"><h:actionerror/></font>
 <h:fielderror cssStyle="color:red;font-size:14px" ></h:fielderror>
</center>
<div id="contentWrap">

	<!--表格控件 -->
  <div id="widget table-widget">
    <div class="pageTitle">未处理订单</div>
    <div class="pageColumn">
      <div class="pageButton"></div>
      <table>
        <thead>
        <th width="25"><input class="select-all" name="" type="checkbox" value=""  /></th>
          <th width="">id</th>
          <th width="">兑换</th>
          <th width="">用户</th>
          <th width="">状态</th>
            <th width="">时间</th>
            <th width="">操作</th>
            </thead>
        <tbody>
        <h:iterator value="ordList" var="o">
          <tr>
            <td class="checkBox"><input name="plid" type="checkbox" value="<h:property value="#o.id"/>" /></td>
            <td><h:property value="#o.id"/></td>
            <td><h:property value="#o.user.nicheng"/></td>
            <td><h:property value="#o.info"/></td>
            <td><h:property value="#o.state"/></td>
             <td><h:property value="#o.time"/></td>
           <td>  <a href="deleteOrder?id=<h:property value="#o.id"/>">删除<img src="images/icon/del.png" width="16" height="16" /></a> </td>
          </tr>
          </h:iterator>
          <tr class=" ">
          <td><label>
		  <input type="button" value="删除" onclick="submit('plid')"/>
		  </label></td>
           
          </tr>
        </tbody>
      </table>
    </div>
  </div><!-- #widget -->
</div>
</body>
</html>
