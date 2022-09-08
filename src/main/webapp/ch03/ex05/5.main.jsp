<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<nav>
	<a href='5.sessionA.jsp'>A</a> &nbsp;
	<a href='5.sessionB.jsp'>B</a> &nbsp;
	<a href='5.logout.jsp'>logout</a> &nbsp;
</nav>
<!--
어떤 페이지를 가도 로그아웃 전에는 결과가 같다.
로그아웃 후에 B를 누르면 새로운 세션이 생긴다 > user 데이터를 넣지 않아서 null이다.
로그아웃 후에 A를 누르고 B를 누르면 null이 아니다.
A > B > logout > B (null)
 -->