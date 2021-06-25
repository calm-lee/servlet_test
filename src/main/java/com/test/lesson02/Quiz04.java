package com.test.lesson02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;


@WebServlet("/servlet/99dan")
public class Quiz04 extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
	
		
		response.setContentType("text/html");
		
		String numberParam = request.getParameter("number");
		Integer number = Integer.valueOf(numberParam);
		
		PrintWriter out = response.getWriter();
		
		
		out.println("<html><head><title>구구단</title></head><body>﻿<ul>");
	
		for(int i = 1; i <= number; i++) {
			out.println("<li>" + number + " X " + i + " = " + (number * i) + "﻿</li>");
		}		
		out.println("﻿</ul></body></html>");
		
	}
}
