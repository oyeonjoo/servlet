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
	public void doGet(HttpServletRequest req, HttpServletResponse res) // get type: �����͸� �а� �ʹ�, post type: �����͸� ���� �ʹ�
		throws ServletException, IOException { // ��Ĺ��-���� �����̳ʰ� call�Ѵ�., res ��ü�� ��� �־ ���� ä�����Ѵ�
		int num1 = 1;
		int num2 = 2;
		
		res.setContentType("text/html; charset=utf-8"); // res�� text type, res header�� ����ȴ�
		PrintWriter out = res.getWriter(); // p.r�� res ���ͷ� ������� ��ü > res body�� ����
		out.println("<h2>GET</h2>");
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);
	}
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) 
		throws ServletException, IOException {
			int num1 = 1;
			int num2 = 2;
			
			res.setContentType("text/html; charset=utf-8"); // res�� Ŭ���̾�Ʈ���� ������ ������, Ŭ���̾�Ʈ�� �� �����͸� �޾Ƽ� ����Ѵ�
			PrintWriter out = res.getWriter();
			out.println("<h2>POST</h2>");
			out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2); // ���ߵڿ��� ���÷���
	}
}
