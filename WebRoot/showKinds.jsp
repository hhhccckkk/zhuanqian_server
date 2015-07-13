<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
        location="deleteKind?idString="+str; 
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
    <div class="pageTitle">赚钱类别</div>
    <div class="pageColumn">
      <div class="pageButton"></div>
      <table>
        <thead>
        <th width="25"><input class="select-all" name="" type="checkbox" value=""  /></th>
          <th width="">id</th>
          <th width="">类容</th>
          <th width="">是否正常</th>
          <th width="">限制数量</th>
           <th width="">操作</th>
            </thead>
        <tbody>
        <h:iterator value="kinds" var="k">
          <tr>
            <td class="checkBox"><input name="plid" type="checkbox" value="<h:property value="#k.id"/>" /></td>
            <td><a href="getOneKind?id=<h:property value="#k.id"/>"><h:property value="#k.id"/></a></td>
            <td><h:property value="#k.content"/></td>
             <td><h:property value="#k.isok"/></td>
               <td><h:property value="#k.num"/></td>
           <td><a href="deleteKind?id=<h:property value="#k.id"/>"> 删除<img src="images/icon/del.png" width="16" height="16" /></a></td>
          </tr>
          </h:iterator>
          <tr class=" ">
          <td><label>
		    <input type="button" value="删除" onclick="submit('plid')"/>
		  </label></td>
            
            　</td>
          </tr>
          
        </tbody>
      </table>
    </div>
  </div><!-- #widget -->
</div>
</body>
</html>
