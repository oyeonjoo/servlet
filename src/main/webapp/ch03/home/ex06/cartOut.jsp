<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<a href='main.jsp'>진열대</a>

<h3>장바구니</h3>
<%
	Object cartObj = session.getAttribute("cart");
	// add > out 정상흐름, user가 out으로 바로 접근하면 업무진행이 되지 않는다, 장바구니가 있는지 먼저 조사한다
	if(cartObj != null) { // 장바구니에 물건이 있는지 확인
		List<String> cart = (List<String>)cartObj;
		if(cart.size() > 0) {
%>
			<form action='cartDelProc.jsp' method='post'>
				<ul> <!-- 물건의 갯수만큼 li, 동적이다 -->
<%
					for(String product: cart) {
%>					
					<li><%= product %><input type='checkbox' name='product' value='<%=product %>'/></li>
<%
				}
%>
				</ul>
				<button type='submit'>빼기</button> <!-- user를 위해 버튼이름을 정한다 -->
			</form>
<%
			String msg = request.getParameter("msg");
			if(msg != null) out.println(msg); // error msg 출력
		} else out.println("물건이 없습니다."); // 웹앱은 화면에 기능이 그대로 머물러 있다. user가 또다른 버튼으로 페이지 이동이 가능하기 때문에 메세지만 출력한다
	} else out.println("장바구니가 없습니다.");
%>