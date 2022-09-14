<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");
	Object cartObj = session.getAttribute("cart");
	
	if(cartObj != null) { // 장바구니가 있는지 확인
		List<String> cart = (List<String>)cartObj;
	
		if(products != null && products.length > 0) { // 빼낼 물건이 있으면
			for(String product: products) // 물건을 꺼낸다
				cart.remove(product);
		} else {
%>
			<c:set var='msg' value='장바구니에서 뺄 물건을 선택하세요.'/> <!-- var: attr name, value: attr val, 페이지컨텍스트 Attr이다 -->
<%			
		}
	} else {
%>
			<c:set var='msg' value='장바구니가 없습니다.'/>
<%		
	}
%>
<c:redirect url='cartOut.jsp'>
	<c:param name='msg' value='${msg}'/> <!-- value 부분은 하드코딩 하지 않고, el로 표현한다 -->
</c:redirect>
<!-- 흐름은 cartOut > cartDel > cartOut 순이다. 
화면에 보이지 않는 것들(proc)은 <h3> 제목을 붙이지 않는다 -->