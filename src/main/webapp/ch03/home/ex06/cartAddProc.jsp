<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");
	// 진열대(main)을 거치지 않는 경우에는 String[] products이 없다
	if(products != null && products.length > 0) { // 선택한 것이 있는지 length로 확인
		List<String> cart = null; // 최초로 addproc을 하면 장바구니가 없기 떄문에 장바구니를 챙겨야하는데 그 이후에는 챙기지 않고 있던 장바구니에 담는다
	
		Object cartObj = session.getAttribute("cart");
		if(cartObj == null) { // 장바구니가 없다
			cart = new ArrayList<>(); // 장바구니를 챙겨야된다
			session.setAttribute("cart", cart); // 장바구니가 준비됐다
		} else cart = (List<String>)cartObj; // 장바구니를 챙긴다
		
		for(String product: products) // 물건을 집어 넣는다
			cart.add(product);
	} else {
%>
<c:redirect url='main.jsp'> <!-- 물건을 선택하지 않은 경우 -->
	<c:param name='msg' value='장바구니에 담을 물건을 선택하세요.'/>
</c:redirect>
<%
	}
%>
<c:redirect url='cartOut.jsp'/> <!-- 장바구니로 돌아가는 경우, 메인과 장바구니 둘중 하나만 실행, 배타적 -->