<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

SimpleDateFormat time = new SimpleDateFormat("HH:mm:ss");
SimpleDateFormat date = new SimpleDateFormat("yyyy년 MM월 dd일");



	<h1>현재 시간은 </h1>
	 <%=request.getParameter("time") %>
	<h1>입니다. </h1>
	
	 <h1>오늘 날짜는</h1>
	 <%=request.getParameter("date") %>
	<h1>입니다. </h1>
	 
</body>
</html>