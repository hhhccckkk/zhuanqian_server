<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="h" uri="/struts-tags"%>
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
	<form action="updateState" method="post">
		<div align="center">
			<br>
			<table width="898" border="0" cellpadding="0" cellspacing="0">
				<!--DWLayoutTable-->
				<tr>
				
					<td height="38" colspan="2" valign="top">用户详细信息</td>
					<td width="81" valign="top"><a
						href="admin/getUserOrder?uid=<h:property value="user.id"/>">兑换记录</a></td>
					<td width="95" valign="top"><a
						href="admin/getUserJiLu?page=1&id=<h:property value="user.id"/>">赚钱记录</a></td>
					<td width="233"><a
						href="admin/getTGInfo?uid=<h:property value="user.id"/>&page=1">推广赚钱</a></td>
					<td width="131">&nbsp;</td>
					<td width="233"><a
						href="admin/getTgUsers?page=1&id=<h:property value="user.id"/>">推广用户</a></td>
					<td width="233"><a
						href="admin/getUserCJ?uid=<h:property value="user.id"/>">抽奖信息</a></td>
						<td><a href="deleteUser?id=<h:property value="user.id"/>">
										删除<img src="images/icon/del.png" width="16" height="16" />
								</a></td>
					<td width="131">&nbsp;</td>
					<td width="242">&nbsp;</td>
				</tr>
				<tr>
					<td width="135" height="54">&nbsp;</td>
					<td colspan="4">id号：<input name="id"
						value="<h:property value="user.id"/>" type="hidden" /></td>

					<td><h:property value="user.id" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					  <td><img src="<h:property value="#u.touxiang"/>" width="40" height="40"></td>
				</tr>
				<tr>
					<td height="31">&nbsp;</td>
					<td colspan="4">总赚钱：</td>
					<td><h:property value="usermoney.allmoney" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="31">&nbsp;</td>
					<td colspan="4">推广赚钱：</td>
					<td><h:property value="usermoney.tjmoney" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="31">&nbsp;</td>
					<td colspan="4">推广人数：</td>
					<td><h:property value="user.tj" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="34">&nbsp;</td>
					<td colspan="4">可兑换：</td>
					<td><h:property value="usermoney.alljifeng" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>


				<tr>
					<td height="38">&nbsp;</td>
					<td colspan="4">是否正常：</td>
					<td><input name="isok" value="<h:property value="user.isok"/>"
						type="text" /></td>
					<td><input type="submit" name="Submit" value="修改"
						style="background:
			  #0099FF; color:#FFFFFF; border-color:#0099FF"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="34">&nbsp;</td>
					<td colspan="4">昵称：</td>
					<td><h:property value="user.nicheng" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="37">&nbsp;</td>
					<td colspan="4">mac：</td>
					<td><h:property value="user.mac" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="34">&nbsp;</td>
					<td colspan="4">电话：</td>
					<td><h:property value="user.phone" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>

				<tr>
					<td height="34">&nbsp;</td>
					<td colspan="4">型号：</td>
					<td><h:property value="user.xinghao" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>

				<tr>
					<td height="31">&nbsp;</td>
					<td colspan="4">时间：</td>
					<td><h:property value="user.time" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="31">&nbsp;</td>
					<td colspan="4">上家1：</td>
					<td><h:property value="user.shangjia1" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="31">&nbsp;</td>
					<td colspan="4">上家2：</td>
					<td><h:property value="user.shangjia2" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="31">&nbsp;</td>
					<td colspan="4">上家3：</td>
					<td><h:property value="user.shuangjia3" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="31">&nbsp;</td>
					<td colspan="4">上家4：</td>
					<td><h:property value="user.shangjia4" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="31">&nbsp;</td>
					<td colspan="4">上家5：</td>
					<td><h:property value="user.shangjia5" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="31">&nbsp;</td>
					<td colspan="4">上家6：</td>
					<td><h:property value="user.shangjia6" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="31">&nbsp;</td>
					<td colspan="4">上家7：</td>
					<td><h:property value="user.shangjia7" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="31">&nbsp;</td>
					<td colspan="4">上家8：</td>
					<td><h:property value="user.shangjia8" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>

				<tr>
					<td height="1"></td>
					<td width="10"></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>
