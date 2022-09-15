<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String userId = request.getParameter("userId");
	String isStoreId = request.getParameter("isStoreId");
	
	if(!userId.equals("")) { // userId 값이 있으면
		session.setAttribute("userId", userId);
	
		if(isStoreId != null && isStoreId.equals("true")) { // isStoreId 값이 있고 값이 true이면 클라이언트에 저장
			Cookie cookie = new Cookie("userId", userId);
			cookie.setMaxAge(10); // 10초가 지나면 브라우저가 쿠키를 지워버린다
			response.addCookie(cookie);
		}
	}
%>
<c:redirect url='main.jsp'/> <!-- 자동으로 userId가 담긴다 -->