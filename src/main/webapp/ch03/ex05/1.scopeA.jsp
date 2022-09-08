<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	pageContext.setAttribute("one", "페이지"); // (attr name, attr val) 수시로 바뀌지 않는다. 수시로 바뀌는 것이면 property를 쓴다
	request.setAttribute("two", "리퀘스트");
	session.setAttribute("three", "세션");
	application.setAttribute("four", "애플리케이션"); // 넓은순으로 오름차순 정렬한 것이다, application의 scope이 가장 넓다
%>
<c:redirect url='1.scopeB.jsp'/>