<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String cart = ""; // 물건이 들어있거나, 비어서 empty string이거나
	Cookie[] cookies = request.getCookies();
	for(Cookie cookie: cookies)
		if(cookie.getName().equals("cart"))
			cart = cookie.getValue(); // cart = 장바구니 안에 담긴 물건들의 집합
	
	String[] products = request.getParameterValues("product"); // 물건을 배열로 준비
	if(products != null && products.length > 0) {
		for(String product: products) cart += product + "/"; // '/'는 구분자
		
		Cookie cookie = new Cookie("cart", cart);
		cookie.setMaxAge(60 * 60 * 24 * 7);
		response.addCookie(cookie); // 완성된 쿠키를 리스폰스에 집어넣는다
	} else {
%>
		<c:redirect url='main.jsp'>
			<c:param name='msg' value='장바구니에 담을 물건을 선택하세요.'/>
		</c:redirect>
<%		
	}
%>
<c:redirect url='cartOut.jsp'/> <!-- 물건담는 작업이 끝났으면 유저가 확인할 수 있도록 페이지 이동 -->