<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	session.invalidate(); // 세션에 있던 userId가 사라진다
%>
<c:redirect url='main.jsp'/>