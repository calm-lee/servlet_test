package com.test.lesson02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/order")
public class Quiz07 extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String priceParam = request.getParameter("price");
		int price = Integer.valueOf(priceParam);
		
		PrintWriter out = response.getWriter();
		
		if(address.startsWith("서울시") == false) {
			out.print("배달 불가 지역입니다.");
		} else if (card.equals("신한카드")) {
			out.print("결제 불가 카드입니다.");	
		} else {
			out.println(address);
			out.println("<html><b>배달 준비 중</b>");
			out.println("<br>결제금액 : " + price + "원</html>");
		}
		
		}
}
