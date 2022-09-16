<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<p> ${param.userId == "java" ? param.userId : "손님"}, 환영합니다.</p> <!-- userId파라미터로 인지 -->
<p> ${param.num1} + ${param.num2} = ${param.num1 + param.num2}</p> <!-- el을 쓰면 parseInt를 쓰지 않아도 된다. 자동으로 번역된다 -->
<p> ${param.submitDay} </p>
<p>
	<c:forEach var='season' items='${paramValues.season}'>
		${season}
	</c:forEach>
</p>