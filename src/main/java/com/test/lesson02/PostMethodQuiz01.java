package com.test.lesson02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz01")
public class PostMethodQuiz01 extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><head><body><b>" + name + "</b>님 지원이 완료되었습니다.<br><br>");
		out.print("<b>지원내용</b><br><br>");
		out.print(introduce);
		out.print("</body></html>");
		
	}
}
