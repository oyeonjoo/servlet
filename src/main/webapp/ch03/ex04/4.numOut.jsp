<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String numStr = request.getParameter("num");

	try {
		int num = Integer.parseInt(numStr); // 내용없이 제출하면 500 error > empty string이라서, 예외처리를 해준다
%>
	<%= num * 2 %>  <!-- response에 출력 -->
	<a href='4.numIn.jsp'>뒤로</a>
<%
	} catch(NumberFormatException e) {
%>
		<!-- 과제: numIn.jsp form 에 에러메세지(영어)를 출력하라. -->
		<c:redirect url='4.numIn.jsp?msg=Input number.'/>
<%
	}
%>
<!-- 에러메세지는 파라미터로 클라이언트에게 보내야한다 -->