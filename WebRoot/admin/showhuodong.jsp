<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@page import="com.hck.money.util.FenYe"%>
<%@ include file="session.jsp"%>
<%@ taglib prefix="h" uri="/struts-tags"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<%
	int flag = FenYe.getFlag("huodongPage");
	int maxnum = FenYe.getMaxnum("huodong");
	int pagenum = FenYe.getnum("huodong", 20);
	Integer type=(Integer)session.getAttribute("huodongType");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>显示信息</title>
<link href="images/style.css" rel="stylesheet" type="text/css" />


<style type="text/css">
body {
	background: #FFF
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
    <div class="pageTitle">活动花费:<h:property value="point"/></div>
    <div class="pageColumn">
      <div class="pageButton"></div>
      <table>
        <thead>
        <th width="25"><input class="select-all" name="" type="checkbox" value=""  /></th>
          <th width="">id</th>
          <th width="">用户</th>
            <th width="">用户id</th>
           <th width="">花费</th>
           <th width="">兑换</th>
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
             <td><a href="getOneUser?id=<h:property value="#o.user.id"/>"><h:property
											value="#o.user.id" /></a></td>
            <td><h:property value="#o.kedoubi"/></td>
            <td><h:property value="#o.info"/></td>
            <td><h:property value="#o.state"/></td>
             <td><h:property value="#o.time"/></td>
           <td>  <a href="deleteOrder?id=<h:property value="#o.id"/>">删除<img src="images/icon/del.png" width="16" height="16" /></a> </td>
          </tr>
          </h:iterator>
						<tr class=" ">
							<td><label> <input type="button" value="删除"
									onclick="submit('plid')" />
							</label></td>
							<td colspan="7" class="checkBox">共找到 <%=maxnum%>
								条记录，每页20条记录,共<%=pagenum%>页 &lt; <a
								href="getHuoDong?page=<%=flag - 1%>&type=<%=type %>" class="STYLE6">上页</a> <a
								href="getHuoDong?page=<%=1 >= pagenum ? pagenum : 1%>&type=<%=type %>" class="STYLE6">1</a>&nbsp;
								<a href="getHuoDong?page=<%=2 >= pagenum ? pagenum : 2%>&type=<%=type %>"
								class="STYLE6">2</a>&nbsp; <a
								href="getHuoDong?page=<%=3 >= pagenum ? pagenum : 3%>&type=<%=type %>" class="STYLE6">3</a>&nbsp;
								<a href="getHuoDong?page=<%=4 >= pagenum ? pagenum : 4%>&type=<%=type %>"
								class="STYLE6">4</a>&nbsp; <a
								href="getHuoDong?page=<%=5 >= pagenum ? pagenum : 5%>&type=<%=type %>" class="STYLE6">5</a>&nbsp;
								<a href="getHuoDong?page=<%=6 >= pagenum ? pagenum : 6%>&type=<%=type %>"
								class="STYLE6">6</a>&nbsp; <a
								href="getHuoDong?page=<%=7 >= pagenum ? pagenum : 7%>&type=<%=type %>" class="STYLE6">7</a>&nbsp;
								<a href="getHuoDong?page=<%=8 >= pagenum ? pagenum : 8%>&type=<%=type %>"
								class="STYLE6">8</a>&nbsp; <a
								href="getHuoDong?page=<%=9 >= pagenum ? pagenum : 9%>&type=<%=type %>" class="STYLE6">9</a>&nbsp;
								<a href="getHuoDong?page=<%=10 >= pagenum ? pagenum : 10%>&type=<%=type %>"
								class="STYLE6">10</a>&nbsp; <a
								href="getHuoDong?page=<%=(flag + 1) >= pagenum ? pagenum : (flag + 1)%>&type=<%=type %>"
								class="STYLE6">下页&gt;</a>&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- #widget -->
	</div>
</body>
</html>
