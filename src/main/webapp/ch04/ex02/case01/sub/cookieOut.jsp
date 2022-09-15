<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='../main.html'>메인</a> <br><br>
<%
	Cookie[] cookies = request.getCookies(); // 쿠키를 읽어낸다
	
	for(Cookie cookie: cookies) // 쿠키를 이터레이팅
		if(cookie.getName().equals("name")) {
%>
		<%= cookie.getName() %>: <%= cookie.getValue() %>
<%			
		}
%>
