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
	int flag = FenYe.getFlag("cjPage");
	int maxnum = FenYe.getMaxnum("cj");
	int pagenum = FenYe.getnum("cj", 20);
	Integer type = (Integer) session.getAttribute("cjtype");
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
	background: #FFF
}
</style>
</head>

<body>
	<center>
		<font color="red"><h:actionerror /></font>
		<h:fielderror cssStyle="color:red;font-size:14px"></h:fielderror>
	</center>
	<div id="contentWrap">

		<!--表格控件 -->
		<div id="widget table-widget">
			<div class="pageTitle">抽奖信息</div>
			<div class="pageColumn">
				<div class="pageButton"></div>
				<table>
					<thead>
						
						<th width="">id</th>
						<th width="">用户id</th>
						<th width="">用户昵称</th>
						<th width="">内容</th>
						<th width="">时间</th>

					</thead>
					<tbody>
						<h:iterator value="choujiangs" var="u">
							<tr>
								<td><h:property value="#u.id" /></td>
								<td><a href="getOneUser?id=<h:property value="#u.uid"/>"><h:property
											value="#u.uid" /></a></td>
								<td><a href="getOneUser?id=<h:property value="#u.uid"/>"><h:property
											value="#u.username" /></a></td>
								<td><h:property value="#u.content" /></td>
								<td><h:property value="#u.time" /></td>
							</tr>
						</h:iterator>
						<tr class=" ">
							<td><label> <input type="button" value="删除"
									onclick="submit('plid')" />
							</label></td>
							<td colspan="7" class="checkBox">共找到 <%=maxnum%>
								条记录，每页15条记录,共<%=pagenum%>页 &lt; <a
								href="getCJ?page=<%=flag - 1%>&type=<%=type%>" class="STYLE6">上页</a>
								<a
								href="getCJ?page=<%=1 >= pagenum ? pagenum : 1%>&type=<%=type%>"
								class="STYLE6">1</a>&nbsp; <a
								href="getCJ?page=<%=2 >= pagenum ? pagenum : 2%>&type=<%=type%>"
								class="STYLE6">2</a>&nbsp; <a
								href="getCJ?page=<%=3 >= pagenum ? pagenum : 3%>&type=<%=type%>"
								class="STYLE6">3</a>&nbsp; <a
								href="getCJ?page=<%=4 >= pagenum ? pagenum : 4%>&type=<%=type%>"
								class="STYLE6">4</a>&nbsp; <a
								href="getCJ?page=<%=5 >= pagenum ? pagenum : 5%>&type=<%=type%>"
								class="STYLE6">5</a>&nbsp; <a
								href="getCJ?page=<%=6 >= pagenum ? pagenum : 6%>&type=<%=type%>"
								class="STYLE6">6</a>&nbsp; <a
								href="getCJ?page=<%=7 >= pagenum ? pagenum : 7%>&type=<%=type%>"
								class="STYLE6">7</a>&nbsp; <a
								href="getCJ?page=<%=8 >= pagenum ? pagenum : 8%>&type=<%=type%>"
								class="STYLE6">8</a>&nbsp; <a
								href="getCJ?page=<%=9 >= pagenum ? pagenum : 9%>&type=<%=type%>"
								class="STYLE6">9</a>&nbsp; <a
								href="getCJ?page=<%=10 >= pagenum ? pagenum : 10%>&type=<%=type%>"
								class="STYLE6">10</a>&nbsp; <a
								href="getCJ?page=<%=(flag + 1) >= pagenum ? pagenum : (flag + 1)%>&type=<%=type%>"
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
