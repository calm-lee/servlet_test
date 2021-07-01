<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
	<%
		Calendar today = Calendar.getInstance();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
		
		// Calendar -> Date 객체로 변환 후 format 적용
		out.println("오늘 날짜는 " + sdf.format(today.getTime()) + "<br>");
		
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
		
		// 어제 날짜 구하기
		Calendar yesterday = Calendar.getInstance();
		yesterday.add(Calendar.DATE, -1);
		
		out.println("어제 날짜는 " + sdf2.format(yesterday.getTime()) + "<br>");
		
//		yesterday.add(Calendar.MONTH, -1);
		
/* 		out.println("한달 전 날짜는 " + sdf2.format(yesterday.getTime()) + "<br>");
		
		yesterday.add(Calendar.YEAR, -1);
		
		out.println("일년 전 날짜는 " + sdf2.format(yesterday.getTime()) + "<br>");
		 */
		 
		 
		// 두 날짜 비교
		int result = today.compareTo(yesterday); // 기준값(today)이 더 크면 1, 같으면 0, 기준값이 작으면 -1
		if(result > 0){
			out.print("today가 더 크다.");
		} else if (result == 0){
			out.print("두 날짜는 같다.");
		} else {
			out.print("yesterday가 더 크다.");
		}
	%>
</body>
</html>