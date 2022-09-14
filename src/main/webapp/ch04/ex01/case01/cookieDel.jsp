<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<%
	Cookie cookie = new Cookie("age", ""); // 삭제될 것이기 때문에 empty string을 쓴다
	cookie.setMaxAge(0); // 쿠키의 maxAge를 정한다, 0초
	response.addCookie(cookie); // 삭제될 쿠키를 리스폰스에 담는다
%>