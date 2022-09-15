<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ page import='java.util.StringTokenizer' %>
<a href='main.html'>진열대</a>
<h3>장바구니</h3>
<%
	String cart = ""; // 물건이 들어있거나, 비어서 empty string이거나
	Cookie[] cookies = request.getCookies();
	for(Cookie cookie: cookies)
		if(cookie.getName().equals("cart")) 
			cart = cookie.getValue();
	// 카트안에 쿠키가 있으면 꺼낸다
	if(cart != "") {
		StringTokenizer products = new StringTokenizer(cart, "/");
%>
		<form action='cartDelProc.jsp' method='post'>
			<ul>
<%				String product = "";
				while(products.hasMoreTokens()) {
					product = products.nextToken();
%>
				<li><%= product %> <input type='checkbox' name='product' value='<%= product %>'></li>
<%
			}
%>
			</ul>
			<button type='submit'>빼기</button>
		</form>
<%
		String msg = request.getParameter("msg");
		if(msg != null) out.println(msg);
	} else out.println("장바구니에 물건이 없습니다."); // 장바구니가 없는 경우, 장바구니에 물건이 없는 경우를 통일
%>
