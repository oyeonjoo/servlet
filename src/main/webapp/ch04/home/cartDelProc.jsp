<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<%
	String cart = ""; // 물건이 들어있거나, 비어서 empty string이거나
	Cookie[] cookies = request.getCookies();
	for(Cookie cookie: cookies)
		if(cookie.getName().equals("cart"))
			cart = cookie.getValue(); // cart = 장바구니 안에 담긴 물건들의 집합
			
	String[] products = request.getParameterValues("product");
	if(products != null && products.length > 0) {
		for(String product: products)
			cart = cart.replaceFirst(product, "");
		
		Cookie cookie = new Cookie("cart", cart);
		response.addCookie(cookie); // 삭제할 물건이 있는 경우
			} else { // 삭제할 물건이 없는 경우
%>
<c:redirect url='cartOut.jsp'>
	<c:param name='msg' value='장바구니에서 뺄 물건을 선택하세요.'/>
</c:redirect>
<%				
			}
%>
<c:redirect url='cartOut.jsp'/>