<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch03.ex05.User' %>
<%
	pageContext.setAttribute("user", new User("최한석", 12)); // 타입이 오브젝트이다, 어떤 타입이든 쓸 수 있다
	User user = new User("한아름", 42);
%>
<%= pageContext.getAttribute("user") %> <br>
<%= user %>
<!-- 
out.print로 바뀌고, 파라미터로 객체를 받으면 파라미터는 그 객체의 toString을 call한다
User라는 객체를 2차 형태인 최한석과 12 로 바꾸었다
랜더링하는 태그에게 주고 싶으면 페이지컨텍스트에 담아서 넘겨주어야한다
-->