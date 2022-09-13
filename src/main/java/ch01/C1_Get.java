package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ch01/get/add") // url �Ҵ�, ���� url-context������ �����ؾ��Ѵ�
public class C1_Get extends HttpServlet { // �� class�� ���� ���� servlet��ü��� �Ѵ� > �ڹ� ���� ������ ����� ���ؼ� ���
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) // get type: �����͸� �а� �ʹ�, post type: �����͸� ���� �ʹ�
		throws ServletException, IOException { // ��Ĺ��-���� �����̳ʰ� call�Ѵ�. res ��ü�� ��� �־ ���� ä�����Ѵ�
		int num1 = 1;
		int num2 = 2;
		
		res.setContentType("text/html; charset=utf-8"); // res�� text type, res header�� ����ȴ�
		PrintWriter out = res.getWriter(); // p.w�� res ���ͷ� ������� ��ü > res body�� ����
		out.println("<h2>GET</h2>");
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);
	} // �⺻���� throws�� ������ �ִ�
	// ������ ���� ������Ʈ Ÿ���� get�� �� call�Ǵ� �޼ҵ��̴�, �Ķ���ͷ� HttpServletRequest req �� �޴´�
} //������ ������� http���� Ŭ������ ��ӹ����� �ȴ�. req, res�� ��Ĺ�� ������ش�
