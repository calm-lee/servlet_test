package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/test")
public class DataBaseConnectTest extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection(); // DB연결
		
		String query = "select * from used_goods";
		
		PrintWriter out = response.getWriter();
		out.print("db test");
		
		try {
			ResultSet resultSet = mysqlService.select(query);
			while(resultSet.next()) {
				out.println("id: " + resultSet.getInt("id"));
				out.println("sellerId: " + resultSet.getInt("sellerId"));
				out.println("title: " + resultSet.getString("title"));
				out.println("description: " + resultSet.getString("description"));
				out.println("price: " + resultSet.getString("price"));				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnect(); // DB 연결 해제
	}

}
