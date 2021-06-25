package com.test.lesson02;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz02")
public class PostMethodQuiz02 extends HttpServlet{
	

	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String id = request.getParameter("userId");
		String password = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>결과</title></head><body>");
		
		if(id.equals(userMap.get("id")) == false){
			out.print("id가 일치하지 않습니다.");
			return;
		} else if (password.equals(userMap.get("password")) == false) {
			out.print("password가 일치하지 않습니다.");
			return;
		} else {
			out.print(userMap.get("name") + "님 환영합니다!");
		}
		out.print("</body></html>");
	}
}
