<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<ul>
	<li><%= pageContext.getAttribute("one") %></li> <!-- attr val을 리턴해준다 -->
	<li><%= request.getAttribute("two") %></li>
	<li><%= session.getAttribute("three") %></li>
	<li><%= application.getAttribute("four") %></li>
</ul>

 
<!--
pc: A용 B용이 따로 생긴다. A에서 B로 이동하는 동안 없어진다.
req: A와 B가 쓰는 리퀘스트는 서로 다르다. redirect가 실행되면서 리스폰스를 보내서 리퀘스트가 사라져서 B가 새로 만든 것이다.
se: A와 B 두개의 페이지에서 공유하고 있다. 로그아웃한 적 없기때문에 세션은 그대로 유지된다.
app: A와 B 두개의 페이지에서 공유하고 있다.
scope별로 데이터를 다룬다.

서블릿에서 업무상 데이터를 칭하는 용어는 attribute, parameter이다.
차이점: 서버는 attr을 읽고 쓸 수 있고, 파라미터는 읽기만 가능하다.(주어는 서버이다)
      파라미터는 클라이언트가 write하고, attr은 서버가 write하기 때문이다.
 -->