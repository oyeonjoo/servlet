<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<c:if test='${param.color == 1}'>빨강</c:if>
<c:if test='${param.color == 2}'>노랑</c:if>
<c:if test='${param.color == 3}'>파랑</c:if>
<c:if test='${param.color == 1}'>RED</c:if> <!-- 다르면 출력되지 않는다, el로 속성값을 표현한 것이다 -->