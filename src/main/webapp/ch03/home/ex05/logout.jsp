<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.jsp'>logout</a>
<%
	session.invalidate();
%>