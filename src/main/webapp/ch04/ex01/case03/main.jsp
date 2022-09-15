<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	Object user = session.getAttribute("userId"); // 새로운 세션이다

	if(user == null) { // 로그인을 안했으면
		String userId = "";
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null) {
			for(Cookie cookie: cookies)
				if(cookie.getName().equals("userId"))
					userId = cookie.getValue();
		}
%>
		<form action='loginProc.jsp'> <!-- 로그인 폼 작성 -->
			ID: <input type='text' name='userId' value='<%= userId %>'/>
			PW: <input type='password' name='pw'/>
			<input type='checkbox' name='isStoreId' value='true'/> ID 저장 <!-- 체크하지 않고 제출하면, isStoreId의 값은 on -->
			<input type='submit' value='로그인'/> 
		</form>
<%
	} else {
%>
		<%= user %>님, 환영합니다. &nbsp; <!-- 로그인 후, 환영메시지 > 세션객체가 생기고 그 안에 userId가 들어가있다, userId 쿠키가 저장되어있다 -->
		<a href='logout.jsp'>로그아웃</a>
<%
	}
%>
<!-- ID 저장 기능을 구현한 것이다 -->
<!-- id를 저장하면, 세션의 userId는 없지만 쿠키 userId는 살아있다 -->