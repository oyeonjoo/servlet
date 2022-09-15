<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	Cookie cookie = new Cookie("name", "john");
	response.addCookie(cookie); // res에 쿠키를 집어넣는다
%>
<a href='main.html'>메인</a>