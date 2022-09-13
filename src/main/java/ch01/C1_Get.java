package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ch01/get/add") // url 할당, 고유 url-context내에서 유일해야한다
public class C1_Get extends HttpServlet { // 이 class로 만든 것을 servlet객체라고 한다 > 자바 언어로 웹앱을 만들기 위해서 사용
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) // get type: 데이터를 읽고 싶다, post type: 데이터를 쓰고 싶다
		throws ServletException, IOException { // 톰캣이-서블릿 컨테이너가 call한다. res 객체는 비어 있어서 직접 채워야한다
		int num1 = 1;
		int num2 = 2;
		
		res.setContentType("text/html; charset=utf-8"); // res는 text type, res header에 저장된다
		PrintWriter out = res.getWriter(); // p.w는 res 부터로 만들어진 객체 > res body에 저장
		out.println("<h2>GET</h2>");
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);
	} // 기본으로 throws를 가지고 있다
	// 서블릿이 받은 리퀘스트 타입이 get일 때 call되는 메소드이다, 파라미터로 HttpServletRequest req 를 받는다
} //서블릿을 만들려면 http서블릿 클래스를 상속받으면 된다. req, res는 톰캣이 만들어준다
