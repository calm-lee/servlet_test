<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method</title>
</head>
<body>
	<%-- Response(서버) --%>
	<%-- Request 객체는 jsp에서 import 없이 바로 사용할 수 있다. --%>	
	
	<strong>아이디</strong>
	<%= request.getParameter("user_id") %>
	<br>
	<strong>이름</strong>
	<%= request.getParameter("name") %>
	<br>
	<strong>나이</strong>
	<%= request.getParameter("age") %>
	<br>
	
</body>
</html>