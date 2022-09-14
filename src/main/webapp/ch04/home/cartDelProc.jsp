<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.jsp'>메인</a>
<%
	Cookie cookie = new Cookie("product", "");
	cookie.setMaxAge(0);
	response.addCookie(cookie);
%>