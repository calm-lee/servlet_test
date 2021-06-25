package com.test.quiz01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Today extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request,
					HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		out.print("오늘의 날짜는 ");
		
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 mm월 dd일");
		out.print(sdf.format(now));
		
	}
}
