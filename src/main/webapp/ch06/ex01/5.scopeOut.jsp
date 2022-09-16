<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<ol>
	<li>${scope}</li> <!-- 좁은 순에서 넓은 순으로 검색해서 찾는다, 없으면 계속 넘거가고 마지막에도 없으면 null이다 -->
	<li>${pageScope.scope}</li>
	<li>${requestScope.scope}</li>
	<li>${sessionScope.scope}</li>
	<li>${applicationScope.scope}</li>
</ol>
