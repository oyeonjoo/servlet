<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch05.service.EmployeeService, ch05.service.EmployeeServiceImpl' %>
<%
	EmployeeService empService = new EmployeeServiceImpl(); // 이 코드는 없어져야한다
%>
<%= empService.getEmployee(100) %> <!-- 화면에 출력하는 부분 > el로 출력할 수 있다 -->