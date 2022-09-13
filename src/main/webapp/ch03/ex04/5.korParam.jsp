<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<c:redirect url='5.target.jsp'>
	<c:param name='msg' value='한글'/> <!-- 자식 태그를 쓴다 -->
</c:redirect>