<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%-- directive: 톰캣에게 안내한다, charset=utf-8: 클라이언트가 사용, utf-8톰캣이 사용 --%>
<% // scriptlet 영역을 나눈다, java code가 들어간다. 영역 밖에는 html code가 들어간다
	int num1 = 1; // 지역변수
	int num2 = 2;
%>
<h2>더하기</h2>
<%= num1 %> + <%= num2 %> = <%= num1 + num2 %> <!-- expression > out.print 로 번역된다 -->
<!-- java에서 선언한 변수를 사용하고 싶으면 expression을 사용하면 된다-->
<!-- jsp를 제공하면 톰캣이 자바파일을 만든다 > 클래스 파일을 만든다 -->
<!-- 스파게티 코드가 덜 되게 하려고 명령을 분리한 것이다 -->