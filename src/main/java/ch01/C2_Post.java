package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ch01/post/add")
public class C2_Post extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) 
		throws ServletException, IOException {
			int num1 = 1;
			int num2 = 2;
			
			res.setContentType("text/html; charset=utf-8"); // res는 클라이언트에게 보내는 데이터, 클라이언트는 이 데이터를 받아서 사용한다
			PrintWriter out = res.getWriter();
			out.println("<h2>POST</h2>");
			out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2); // 개발뒤에는 디플로이
	} // 405 에러: 허용되지 않은 메소드 > req 타입이 잘못되었다-req 타입은 get(doGet이 없다)
}
