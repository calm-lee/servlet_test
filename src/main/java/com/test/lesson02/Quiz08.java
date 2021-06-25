package com.test.lesson02;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/search")
public class Quiz08 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		List<String> list = new ArrayList<>(Arrays.asList("강남역 최고 맛집 소개 합니다.", 
				"오늘 기분 좋은 일이 있었네요.",
				"역시 맛집 데이트가 제일 좋네요.", 
				"집에 가는 길에 동네 맛집 가서 안주 사갑니다.", 
				"자축 저 오늘 생일 이에요."));

		String search = request.getParameter("search");

		PrintWriter out = response.getWriter();

		out.print("<html><head><title>검색결과</title></head><body>");

		for (String text : list) {
			if (text.contains(search)) {
//				List<String> word = new ArrayList<>(Arrays.asList(text.split(" ")));
//				for (String w : word) {
//					if (w.equals(search)) {
//						out.print("<b>" + w + "</b> ");
//					} else {
//						out.print(w + " ");
//					}
//				}
//				out.print("<br></body></html>");
				text = text.replaceAll(search, "<b>" + search + "</b>");
				out.print(text + "<br>");
			}
			out.print("</body></html>");
		}
	}
}
