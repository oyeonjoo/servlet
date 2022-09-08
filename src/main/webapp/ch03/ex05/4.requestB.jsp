<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch03.ex05.User' %>
<%
	User user = (User)request.getAttribute("user");
	user.setAge(2);
%>
<jsp:forward page='4.requestC.jsp'/>
<!-- getAttribute의 리턴타입은 오브젝트이다, user class의 메소드를 쓰고싶으면 user.를 붙여준다 -->