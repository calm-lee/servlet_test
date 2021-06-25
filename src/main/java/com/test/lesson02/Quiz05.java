package com.test.lesson02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/quiz05")
public class Quiz05 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/json");
		PrintWriter out = response.getWriter();
		
		String numberParam1 = request.getParameter("number1");
		Integer number1 = Integer.valueOf(numberParam1);
				
		String numberParam2 = request.getParameter("number2");
		Integer number2 = Integer.valueOf(numberParam2);
		
		out.print("{\"addition\":" + (number1 + number2) + ", \"substraction\":" + (number1 - number2));
		out.print(", \"multiplication\":" + (number1 * number2) +
				  ", \"division\":" + (number1 / number2) + "}");
	}
}
