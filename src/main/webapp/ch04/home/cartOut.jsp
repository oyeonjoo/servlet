<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ page import='java.util.StringTokenizer' %>
<a href='main.html'>메인</a>
<%
	List<String> cart = new ArrayList<>();

	StringTokenizer st = null;
	Cookie[] cookies = request.getCookies(); // cookie를 꺼낸다
	
	for(Cookie cookie: cookies) {
		if(cookie.getName().equals("cart")) {
			String tmp = cookie.getValue(); // tmp에 저장
			st = new StringTokenizer(tmp, "/"); // 노트북- 모니터-마우스가 들어있다
			while(st.hasMoreTokens()) // false가 되면 반복을 멈춘다
				cart.add(st.nextToken()); // 리턴되는 값을 add한다
		}
	}
	
	if(cart.size() > 0) {
%>
		<ul>
<%
			for(String product: cart) {
%>
				<li><%= product %></li>
<%
			}
%>
		</ul>
<%
	} else out.println("물건이 없습니다.");
%>