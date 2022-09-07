<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
A
<%
	response.sendRedirect("1.b.jsp"); // 페이지 이동은 직접 실행하지 않고, b url을 res에 출력하는 기능을 한다
%> <!-- user의 개입이 없다, A를 받았는데 그건 이미 사라지고 B가 출력된다, 클라이언트는 A에게 먼저 req를 보내고 B에 보냈다 -->
<!-- forward는 req객체를 가지고 한 것이다. redirect는 res객체를 가지고 한다 -->
<!-- 서로 다른 서버에 있으면 사용할 수 없다. A와 B가 같은 업무이면 forward, 다른 업무이면 redirect로 분리시키는 것이 낫다.-->