package com.test.quiz05;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")
public class HeraPalace extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("/text/plain");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String query = "select * from real_estate";
		
		PrintWriter out = response.getWriter();
		
		
		try {
			ResultSet resultSet = mysqlService.select(query);
			while(resultSet.next()) {
				out.print("매물주소: " + resultSet.getString("address") + ",");
				out.print("면적: " + resultSet.getInt("area") + ",");
				out.println("타입: " + resultSet.getString("type"));		
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnect(); // DB 연결 해제
		
	}

}
