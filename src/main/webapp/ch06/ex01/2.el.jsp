<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
String: ${"hello"} <br>
int: ${10} <br>
double: ${10.0} <br>
boolean: ${true} <br>
null: ${null} <%-- <%= null %> --%> <hr> <!-- expression에서 null값은 500번 에러가 난다, el이 쓰기 편하다(에러발생x) -->

\${ 5 * 2 }: ${ 5 * 2 } <br>
${ 5 > 2 } <br>
${ 5 > 2 ? 5 : 2} <br>
${ 5 > 2 || 5 < 2}