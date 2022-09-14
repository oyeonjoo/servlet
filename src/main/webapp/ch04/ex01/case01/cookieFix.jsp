<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<%
	Cookie cookie = new Cookie("age", "34");
	response.addCookie(cookie); // response에 addCookie로 덮어쓴다(추가한다), 수정한다
%>