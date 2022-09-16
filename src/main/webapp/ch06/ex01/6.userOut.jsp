<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<ul>
	<li>${user}</li>
	<li>${user.userName}</li> <!-- User.class에서 준비한 getter가 call되었다 -->
	<li>${pageScope.user.userName}</li>
	<li>${requestScope.user.userName}</li>
	<li>${sessionScope.user.userName}</li>
	<li>${applicationScope.user.userName}</li>
</ul> <!--  단순한 java변수가 아니다 -->