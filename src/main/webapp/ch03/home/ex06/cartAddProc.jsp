<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");

	if(products != null && products.length > 0) { // 선택한 것이 있는지 length로 확인
		List<String> cart = new ArrayList<>();
	
		for(String product: products)
			cart.add(product); // 꺼내서 cart에 집어넣는다
		
		session.setAttribute("cart", cart); // 장바구니를 session에 집어넣는다
	}
%>
<c:redirect url='cartOut.jsp'/> <!-- 장바구니 안을 본다 > 페이지 redirect -->