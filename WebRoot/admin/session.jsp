
<%@page import="com.hck.money.bean.Admin"%>
<%
Admin admin=null;
admin=(Admin)session.getAttribute("admin");
if(admin==null)
{
	response.sendRedirect("login.jsp");
}
%>
