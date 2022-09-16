<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<ul>
	<c:forEach var='fruit' items='${paramValues.fruit}' varStatus='status'> <!-- attr name=fruit -->
		<li>${status.count}: ${fruit}, ${status.index}</li> <!-- 숫자를 붙이고 싶으면 count를 쓴다, index는 0부터 시작 -->
	</c:forEach>
</ul>