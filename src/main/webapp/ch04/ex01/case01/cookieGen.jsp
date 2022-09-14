<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<%
	Cookie cookie1 = new Cookie("name", "john"); // name, val(text type) > 저장은 클라이언트가 할 것이고 텍스트로 저장한다
	Cookie cookie2 = new Cookie("age", "12");
	// res에 담아서 클라이언트에게 보낸다(쿠키 = 데이터)
	response.addCookie(cookie1);
	response.addCookie(cookie2);	
%>