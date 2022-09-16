<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	pageContext.setAttribute("userName", "최한석");
%>
${userName} <br> <!-- el안에 하드코딩보다 attr를 쓰는 것이 더 효율적이다 -->
${hello} <br>
${empty hello} <br> <!-- hello자리가 비어있어서 true이다 -->
${empty userName ? "무명" : userName} <!-- userName이 있기 때문에 userName이 나온다 -->
${!empty userName ? userName : "무명"} <!-- !empty는 반대 -->
<!-- el과 attr을 함께 쓴 것이다 -->