package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ch01/getPost/add")
public class C3_GetPost extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) // get type: 데이터를 읽고 싶다, post type: 데이터를 쓰고 싶다
		throws ServletException, IOException { // 톰캣이-서블릿 컨테이너가 call한다., res 객체는 비어 있어서 직접 채워야한다
		int num1 = 1;
		int num2 = 2;
		
		res.setContentType("text/html; charset=utf-8"); // res는 text type, res header에 저장된다
		PrintWriter out = res.getWriter(); // p.r은 res 부터로 만들어진 객체 > res body에 저장
		out.println("<h2>GET</h2>");
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);
	}
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) 
		throws ServletException, IOException {
			int num1 = 1;
			int num2 = 2;
			
			res.setContentType("text/html; charset=utf-8"); // res는 클라이언트에게 보내는 데이터, 클라이언트는 이 데이터를 받아서 사용한다
			PrintWriter out = res.getWriter();
			out.println("<h2>POST</h2>");
			out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2); // 개발뒤에는 디플로이
	}
}
