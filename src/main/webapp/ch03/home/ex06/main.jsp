<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<h3>진열대</h3>
<form action='cartAddProc.jsp' method='post'> <!-- 장바구니에 추기히는 작업 -->
	<ul> <!-- 장바구니는 attr로, 노트북-모니터-마우스는 파라미터로 -->
		<li>노트북 <input type='checkbox' name='product' value='노트북'/></li>
		<li>모니터 <input type='checkbox' name='product' value='모니터'/></li>
		<li>마우스 <input type='checkbox' name='product' value='마우스'/></li>
	</ul> <!-- 노트북-모니터-마우스를 추상화시켜서 product가 되는 것이다 -->
	<button type='submit'>담기</button> <!-- 장바구니에 담는 것을 실체화시킨 것 -->
	<button type='submit' formaction='cartOut.jsp'>보기</button> <!-- 장바구니를 살펴보다를 실체롸시킨 것 -->
</form> <!-- form을 다시 보여주는 경우: 최초로 노출시키는 경우, 물건을 선택하지 않고 담기버튼을 눌렀을 경우, 장바구니에 물건을 담고 돌아온 경우 -->
<!-- form 안에서는 최초로 노출 시키는 경우이다 -->
<%
	String msg = request.getParameter("msg"); // 최초일 때는 msg를 보여주면 안된다
	if(msg != null) out.println(msg);
%>