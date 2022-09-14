<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");
	
	if(products != null) {
		String cart = ""; // 장바구니 준비, 쿠키는 텍스트이기 때문에 string으로 준비
		for(String product: products) cart += product + "/"; // 카트가 string이기 때문에 카트에 물건을 담는 것을 붙이기로 표현한다
		
		Cookie cookie = new Cookie("cart", cart);
		cookie.setMaxAge(60 * 60 * 24 * 7);
		// 직접 계산하지 않고 expression을 쓴다, 최초 생성시에는 유저나 개발자가 쓸 수 밖에 없다. 데이터 생성 외에는 컴퓨터가 계산하도록 한다.
		response.addCookie(cookie);
	}
%>
<c:redirect url='cartOut.jsp'/>