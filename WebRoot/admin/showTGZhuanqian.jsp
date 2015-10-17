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
	int flag = FenYe.getFlag("tgpPage");
	int maxnum = FenYe.getMaxnum("tgpSize");
	int pagenum = FenYe.getnum("tgpSize", 15);
	Long uid=(Long)session.getAttribute("tgpuid");
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
			<div class="pageTitle">推广赚钱信息</div>
			<div class="pageColumn">
				<div class="pageButton"></div>
				<table>
					<thead>
						<th width="25"><input class="select-all" name=""
							type="checkbox" value="" /></th>
						<th width="">id</th>
						<th width="">用户id</th>
						<th width="">赚钱记录</th>
						<th width="">时间</th>
					</thead>
					<tbody>
						<h:iterator value="tgs" var="t">
							<tr>
								<td class="checkBox"><input name="plid" type="checkbox"
									value="<h:property value="#t.uid"/>" /></td>
								<td><h:property
											value="#t.uid" /></td>
								<td><a href="getOneUser?id=<h:property value="#t.uid"/>"><h:property
											value="#t.uid" /></a></td>
								<td><h:property value="#t.content"/></td>
								<td><h:property value="#t.time"/></td>
								
							</tr>
						</h:iterator>
						<tr class=" ">
							<td><label> <input type="button" value="删除"
									onclick="submit('plid')" />
							</label></td>
							<td colspan="7" class="checkBox">共找到 <%=maxnum%>
								条记录，每页15条记录,共<%=pagenum%>页 &lt; <a
								href="getTGInfo?page=<%=flag - 1%>&uid=<%=uid %>" class="STYLE6">上页</a> <a
								href="getTGInfo?page=<%=1 >= pagenum ? pagenum : 1%>&uid=<%=uid %>" class="STYLE6">1</a>&nbsp;
								<a href="getTGInfo?page=<%=2 >= pagenum ? pagenum : 2%>&uid=<%=uid %>"
								class="STYLE6">2</a>&nbsp; <a
								href="getTGInfo?page=<%=3 >= pagenum ? pagenum : 3%>&uid=<%=uid %>" class="STYLE6">3</a>&nbsp;
								<a href="getTGInfo?page=<%=4 >= pagenum ? pagenum : 4%>&uid=<%=uid %>"
								class="STYLE6">4</a>&nbsp; <a
								href="getTGInfo?page=<%=5 >= pagenum ? pagenum : 5%>&uid=<%=uid %>" class="STYLE6">5</a>&nbsp;
								<a href="getTGInfo?page=<%=6 >= pagenum ? pagenum : 6%>&uid=<%=uid %>"
								class="STYLE6">6</a>&nbsp; <a
								href="getTGInfo?page=<%=7 >= pagenum ? pagenum : 7%>&uid=<%=uid %>" class="STYLE6">7</a>&nbsp;
								<a href="getTGInfo?page=<%=8 >= pagenum ? pagenum : 8%>&uid=<%=uid %>"
								class="STYLE6">8</a>&nbsp; <a
								href="getTGInfo?page=<%=9 >= pagenum ? pagenum : 9%>&uid=<%=uid %>" class="STYLE6">9</a>&nbsp;
								<a href="getTGInfo?page=<%=10 >= pagenum ? pagenum : 10%>&uid=<%=uid %>"
								class="STYLE6">10</a>&nbsp; <a
								href="getTGInfo?page=<%=(flag + 1) >= pagenum ? pagenum : (flag + 1)%>&uid=<%=uid %>"
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
