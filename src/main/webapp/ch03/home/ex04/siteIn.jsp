<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<form action='siteProc.jsp' method='post'>
	다음: <input type='radio' name='siteName'/>
	네이버: <input type='radio' name='siteName'/>
	<input type='submit'/>
</form>
<%= request.getParameter("siteName") %>
