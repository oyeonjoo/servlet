<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	String[] letters = request.getParameterValues("letter");
	String gender = request.getParameter("gender");
	String[] jobs = request.getParameterValues("job");
%>
<%-- 과제: letters를 iterating해서 출력하라. --%>
<%
	if(letters != null)
		for(String letter: letters) {
%>
		<%= letter %> &nbsp;
<%
		}
%> <br>

<!-- if(letters != null)가 없으면, 500 error이다. 500 error는 자바코드 error이다
라디오나 체크박스가 여러개 있을 경우, 선택하지 않고 넘기면 null 값이 사용된다
null은 폼을 작성하지 않아서, letter 파라미터가 없어서 파라미터밸류스가 만든 것이다 -->
<%= gender %> <br>

<%
	if(jobs != null)
		for(String job: jobs) {
%>
	<%= job %> &nbsp;
<%
		}
%>