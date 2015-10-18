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
	int flag = FenYe.getFlag("tgUserPage");
	int maxnum = FenYe.getMaxnum("tgUser");
	int pagenum = FenYe.getnum("tgUser", 20);
	Long id = (Long) session.getAttribute("tguid");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>显示信息</title>
<link href="images/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="javascript/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('tbody tr:odd').addClass("trLight");

		$(".select-all").click(function() {
			if ($(this).attr("checked")) {
				$(".checkBox input[type=checkbox]").each(function() {
					$(this).attr("checked", true);
				});
			} else {
				$(".checkBox input[type=checkbox]").each(function() {
					$(this).attr("checked", false);
				});
			}
		});

	})
</script>
<script language="javascript">
	function check(stype, na) {

		for (var i = 0; i < document.getElementsByName(na).length; i++) {
			if (stype == 'all')
				document.getElementsByName(na)[i].checked = true;
			else
				document.getElementsByName(na)[i].checked = false;
		}
	}
	function submit(na) {

		var str = '';
		for (var i = 0; i < document.getElementsByName(na).length; i++) {
			if (document.getElementsByName(na)[i].checked) {
				if (str == '')
					str += document.getElementsByName(na)[i].value;
				else
					str += ',' + document.getElementsByName(na)[i].value;
			}
		}
		if (str == '') {
			alert('你没选择任何内容！');
			return false;
		} else {
			location = "deleteUserJL?idString=" + str;
		}
	}
</script>
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
			<div class="pageTitle">
				推广用户：<%=maxnum %>

				<h:property value="moneyBean.allMoney" />
				<h:property value="moneyBean.content" />
			</div>
			<div class="pageColumn">
				<div class="pageButton"></div>
				<table>
					<thead>
						

						<th width="">用户ID</th>
						<th width="">昵称</th>
						<th width="">头像</th>
						<th width="">推广</th>
						<th width="">型号</th>
						<th width="">sdk</th>
						<th width="">imei</th>
						<th width="">ip</th>
						<th width="">qq</th>
						<th width="">上家1</th>
						<th width="">上家2</th>
						<th width="">上家3</th>
						<th width="">上家4</th>
						<th width="">上家5</th>
						<th width="">上家6</th>
						<th width="">上家7</th>
						<th width="">上家8</th>
					</thead>
					<tbody>
						<h:iterator value="users" var="u">
							<tr>
								<td><a href="getOneUser?id=<h:property value="#u.id"/>"><h:property
											value="#u.id" /></a></td>
								<td><a href="getOneUser?id=<h:property value="#u.id"/>"><h:property
											value="#u.nicheng" /></a></td>
						       <td><img src="<h:property value="#u.touxiang"/>" width="40" height="40"></td>
								<td><h:property value="#u.tj" /></td>
								<td><h:property value="#u.xinghao" /></td>
								<td><h:property value="#u.sdk" /></td>
								<td><h:property value="#u.mac" /></td>
								<td><h:property value="#u.ips" /></td>
								<td><h:property value="#u.qq" /></td>
								<td><h:property value="#u.shangjia1" /></td>
								<td><h:property value="#u.shangjia2" /></td>
								<td><h:property value="#u.shangjia3" /></td>
								<td><h:property value="#u.shangjia4" /></td>
								<td><h:property value="#u.shangjia5" /></td>
								<td><h:property value="#u.shangjia6" /></td>
								<td><h:property value="#u.shangjia7" /></td>
								<td><h:property value="#u.shangjia8" /></td>
								<td><a href="deleteTGUser?id=<h:property value="#u.id"/>">
										删除<img src="images/icon/del.png" width="16" height="16" />
								</a></td>
							</tr>
							
						</h:iterator>
						<tr class=" ">
							<td><label> </label></td>
							<td colspan="7" class="checkBox">共找到 <%=maxnum%>
								条记录，每页15条记录,共<%=pagenum%>页 &lt; <a
								href="getTgUsers?page=<%=flag - 1%>&id=<%=id%>" class="STYLE6">上页</a>
								<a href="getTgUsers?page=<%=1 >= pagenum ? pagenum : 1%>&id=<%=id%>"
								class="STYLE6">1</a>&nbsp; <a
								href="getTgUsers?page=<%=2 >= pagenum ? pagenum : 2%>&id=<%=id%>"
								class="STYLE6">2</a>&nbsp; <a
								href="getTgUsers?page=<%=3 >= pagenum ? pagenum : 3%>&id=<%=id%>"
								class="STYLE6">3</a>&nbsp; <a
								href="getTgUsers?page=<%=4 >= pagenum ? pagenum : 4%>&id=<%=id%>"
								class="STYLE6">4</a>&nbsp; <a
								href="getTgUsers?page=<%=5 >= pagenum ? pagenum : 5%>&id=<%=id%>"
								class="STYLE6">5</a>&nbsp; <a
								href="getTgUsers?page=<%=6 >= pagenum ? pagenum : 6%>&id=<%=id%>"
								class="STYLE6">6</a>&nbsp; <a
								href="getTgUsers?page=<%=7 >= pagenum ? pagenum : 7%>&id=<%=id%>"
								class="STYLE6">7</a>&nbsp; <a
								href="getTgUsers?page=<%=8 >= pagenum ? pagenum : 8%>&id=<%=id%>"
								class="STYLE6">8</a>&nbsp; <a
								href="getTgUsers?page=<%=9 >= pagenum ? pagenum : 9%>&id=<%=id%>"
								class="STYLE6">9</a>&nbsp; <a
								href="getTgUsers?page=<%=10 >= pagenum ? pagenum : 10%>&id=<%=id%>"
								class="STYLE6">10</a>&nbsp; <a
								href="getTgUsers?page=<%=(flag + 1) >= pagenum ? pagenum : (flag + 1)%>&id=<%=id%>"
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
