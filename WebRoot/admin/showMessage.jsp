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

<%
    int flag=FenYe.getFlag("mPage");
    int maxnum=FenYe.getMaxnum("mSize");
     int pagenum=FenYe.getnum("mSize",12);
     Integer type=(Integer)session.getAttribute("msgType");
 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>显示信息</title>
<link href="images/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="javascript/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('tbody tr:odd').addClass("trLight");
		
		$(".select-all").click(function(){
			if($(this).attr("checked")){
				$(".checkBox input[type=checkbox]").each(function(){
					$(this).attr("checked", true);  
					});
				}else{
					$(".checkBox input[type=checkbox]").each(function(){
					$(this).attr("checked", false);  
					});
				}
			});
		
		})
</script>
<script language="javascript"> 
function check(stype,na){ 
         
            for(var i=0; i< document.getElementsByName(na).length;i++){ 
                if(stype=='all') document.getElementsByName(na)[i].checked=true; 
                else document.getElementsByName(na)[i].checked=false; 
            } 
        }
function submit(na) 
{ 
 
    var str = ''; 
    for(var i=0;i < document.getElementsByName(na).length;i++) 
    { 
          if(document.getElementsByName(na)[i].checked){ 
            if(str=='') str += document.getElementsByName(na)[i].value; 
            else str += ',' + document.getElementsByName(na)[i].value; 
          } 
    } 
    if(str=='') 
    { 
        alert('你没选择任何内容！'); 
        return false; 
    } 
    else 
    { 
        location="deleteMessage?idString="+str; 
    } 
} 
</script> 
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
    <div class="pageTitle">消息</div>
    <div class="pageColumn">
      <div class="pageButton"></div>
      <table>
        <thead>
        <th width="25"><input class="select-all" name="" type="checkbox" value=""  /></th>
          <th width="">id</th>
          <th width="">用户id</th>
          <th width="">用户名字</th>
           <th width="">来自用户id</th>
          <th width="">类容</th>
            <th width="">时间</th>
            <th width="">操作</th>
            </thead>
        <tbody>
        <h:iterator value="meList" var="m">
          <tr>
            <td class="checkBox"><input name="plid" type="checkbox" value="<h:property value="#m.id"/>" /></td>
            <td><h:property value="#m.id"/></td>
            <td><h:property value="#m.uid"/></td>
            <td><h:property value="#m.laizi"/></td>
             <td><h:property value="#m.sendUserId"/></td>
            <td><h:property value="#m.content"/></td>
             <td><h:property value="#m.time"/></td>
           <td>  <a href="deleteMessage?mid=<h:property value="#m.id"/>">删除<img src="images/icon/del.png" width="16" height="16" /></a> </td>
          </tr>
          </h:iterator>
          <tr class=" ">
          <td><label>
		  <input type="button" value="删除" onclick="submit('plid')"/>
		  </label></td>
            <td colspan="7" class="checkBox">
              共找到 <%=maxnum %> 条记录，每页12条记录,共<%=pagenum %>页 &lt;
          <a href="getDX?page=<%=flag-1%>&type=<%=type %>" class="STYLE6">上页</a>　
          <a href="getDX?page=<%=1>=pagenum?pagenum:1 %>&type=<%=type %>" class="STYLE6">1</a>&nbsp;
         <a href="getDX?page=<%=2>=pagenum?pagenum:2 %>&type=<%=type %>" class="STYLE6">2</a>&nbsp;
         <a href="getDX?page=<%=3>=pagenum?pagenum:3 %>&type=<%=type %>" class="STYLE6">3</a>&nbsp;
         <a href="getDX?page=<%=4>=pagenum?pagenum:4 %>&type=<%=type %>" class="STYLE6">4</a>&nbsp;
         <a href="getDX?page=<%=5>=pagenum?pagenum:5 %>&type=<%=type %>" class="STYLE6">5</a>&nbsp;
         <a href="getDX?page=<%=6>=pagenum?pagenum:6 %>&type=<%=type %>" class="STYLE6">6</a>&nbsp;
         <a href="getDX?page=<%=7>=pagenum?pagenum:7 %>&type=<%=type %>" class="STYLE6">7</a>&nbsp;
         <a href="getDX?page=<%=8>=pagenum?pagenum:8 %>&type=<%=type %>" class="STYLE6">8</a>&nbsp;
         <a href="getDX?page=<%=9>=pagenum?pagenum:9 %>&type=<%=type %>" class="STYLE6">9</a>&nbsp;
         <a href="getDX?page=<%=10>=pagenum?pagenum:10 %>&type=<%=type %>" class="STYLE6">10</a>&nbsp;
        <a href="getDX?page=<%=(flag+1)>=pagenum?pagenum:(flag+1)%>"&type=<%=type %> class="STYLE6">下页&gt;</a>&nbsp;
            　</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div><!-- #widget -->
</div>
</body>
</html>
