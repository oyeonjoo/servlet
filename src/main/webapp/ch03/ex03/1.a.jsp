<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<!-- user가 링크, 버튼을 클릭하면 페이지 이동을 시킨다/ 페이지 이동을 브라우저가 자동으로 하는 것을 dispatcher라고 한다-->
A
<%
	RequestDispatcher dispatcher = request.getRequestDispatcher("1.b.jsp");
	dispatcher.forward(request, response); // a페이지가 가지고 있던 req, res를 다음페이지에 넘겨준다
%>