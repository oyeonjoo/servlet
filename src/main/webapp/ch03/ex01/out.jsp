<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	for(int i = 0; i < 10; i++)
		out.print(i + "&nbsp;"); // 원래 class 코드로 바뀌는데, 직접 jsp 코드로 쓴 것이다
%>
<!-- 무늬만 jsp, 안에는 자바코드가 있다 -->