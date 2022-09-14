<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<%
	Cookie[] cookies = request.getCookies(); // getCookies로 읽는다, 자동으로 쿠키파일을 객체로 변환해준다
	
	for(Cookie cookie: cookies) {
		if(cookie.getName().equals("name") || cookie.getName().equals("age")) {
%>
		<%= cookie.getName() %>: <%= cookie.getValue() %><br>
<%
		} // 원하는 쿠키를 골라낸다 > 각각 얻어낼 수 있는 메소드가 있다(getName 등)
	}
%>