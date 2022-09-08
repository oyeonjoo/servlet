<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	session.getAttribute("userId");
	session.getAttribute("password");	
%>
<%
	String userId = "java";
	String password = "java";
	
	if(userId.equals("java") && password.equals("java"))
%>
<c:redirect url='main.jsp'/><p>java님, 환영합니다.</p>
<c:redirect url='login.jsp'/><p>아이디와 암호를 다시 입력하세요.</p>
