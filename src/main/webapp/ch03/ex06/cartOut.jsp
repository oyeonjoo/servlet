<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<a href='main.html'>메인</a>
<h3>장바구니</h3>
<%
	Object cartObj = session.getAttribute("cart"); // 세션에 넣는순간 오브젝트로 프로모션 된다
	
	if(cartObj != null) {
		List<String> cart = (List<String>)cartObj;
		if(cart.size() > 0) { // 장바구니에 물건이 있는지 확인
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
		} else out.print("장바구니에 물건이 없습니다.");
	} else out.print("장바구니가 없습니다.");
%>